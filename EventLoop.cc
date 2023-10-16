#include"EventLoop.h"
#include"Logger.h"
#include"Poller.h"
#include"channel.h"

#include<unistd.h>
#include<sys/syscall.h>
#include<sys/eventfd.h>
#include<fcntl.h>

namespace ccy{

__thread EventLoop *t_loopInThisThread = nullptr;
const int kPollTimeMs = 10000;

int createEventfd(){
    int evtfd = ::eventfd(0, EFD_NONBLOCK | EFD_CLOEXEC);
    if(evtfd < 0){
        LOG_ERROE("eventfd error: %d \n", errno);        
    }
    return evtfd;
}

EventLoop::EventLoop()
    :looping_{false}
    ,quit_{false}
    ,callingPendingFunctors_{false}
    ,threadId_{CurrentThread::tid()}
    ,poller_{Poller::newDefaultPoller(this)}
    ,wakeupFd_(createEventfd())
    ,wakeupChannel_(new Channel(this, wakeupFd_))
{
    LOG_DEBUG("EventLoop created %p in thread %d \n", this, threadId_);
    
    if(t_loopInThisThread){
        LOG_FATAL("Another EventLoop %p exists in this thread %d \n", t_loopInThisThread, threadId_);
    }else{
        t_loopInThisThread = this;
    }

    wakeupChannel_->setReadCallback(std::bind(&EventLoop::handleRead, this));
    wakeupChannel_->enableReading();
}


EventLoop::~EventLoop(){
    wakeupChannel_->disableAll();
    wakeupChannel_->remove();
    ::close(wakeupFd_);
    t_loopInThisThread = nullptr;
}

void EventLoop::loop(){
    looping_ = true;
    quit_ = false;

    LOG_INFO("EventLoop %p start looping \n", this);

    while(!quit_){
        activateChannels_.clear();
        pollReturnTime_ = poller_->poll(kPollTimeMs, &activateChannels_);
        // Poller listen events happened in channels, and report to eventloop, 
        // then tell channel to handle the events
        for(Channel *channel : activateChannels_){
            channel->handleEvent(pollReturnTime_);
        }

        doPendingFunctors();

    }
    LOG_INFO("EventLoop %p stop looping. \n", this);
    looping_ = false;
}

void EventLoop::quit(){

    quit_ = true;
    if(!isInLoopThread()){
        wakeup();
    }
}

void EventLoop::runInLoop(Functor cb){
    if(!isInLoopThread()){
        cb();
    }else{
        queueInLoop(cb);
    }
}

void EventLoop::queueInLoop(Functor cb){
    {
        std::unique_lock<std::mutex> lock(mutex_);
        pendingFunctors_.emplace_back(cb);
    }
    // callingPendingFunctors_ : current loop is executing cb(callback), meantime, there is a new cb in loop 
    if(!isInLoopThread() || callingPendingFunctors_){
        wakeup();
    }

}

void EventLoop::handleRead(){
    uint64_t one = 1;
    ssize_t n = read(wakeupFd_, &one, sizeof one);
    
    if(n != sizeof one){
        LOG_ERROE("EventLoop::handleRead() reads %lu bytes instead of 8", n);
    }
}

void EventLoop::wakeup(){
    uint64_t one = 1;
    ssize_t n = write(wakeupFd_, &one, sizeof one);
    
    if(n != sizeof one){
        LOG_ERROE("EventLoop::handleRead() writes %lu bytes instead of 8", n);
    }
}

void EventLoop::updateChannel(Channel* channel){
    poller_->updateChannel(channel);
}

void EventLoop::removeChannel(Channel* channel){
    poller_->removeChannel(channel);
}

bool EventLoop::hasChannel(Channel* channel){
    return  poller_->hasChannel(channel);
}

void EventLoop::doPendingFunctors(){
    std::vector<Functor> functors;
    callingPendingFunctors_ = true;

    {
        std::unique_lock<std::mutex> lock(mutex_);
        functors.swap(pendingFunctors_);
    }
    for(const Functor & functor: functors){
        functor();
    }
    callingPendingFunctors_ = false;
}

}
