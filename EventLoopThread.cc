#include"EventLoopThread.h"
#include"EventLoop.h"

namespace ccy{

EvevtLoopThread::EvevtLoopThread(const ThreadInitCallback &cb,
        const std::string &name)
    : loop_{nullptr}
    , exiting_{false}
    , thread_(std::bind(&EvevtLoopThread::ThreadFunc, this), name)
    , mutex_{}
    , cond_{}
    , callback_{cb}
{

}

EvevtLoopThread::~EvevtLoopThread(){
    exiting_ = true;
    if(loop_ != nullptr){
        loop_->quit();
        thread_.join();
    }
}

EventLoop* EvevtLoopThread::startLop(){
    thread_.start();

    EventLoop *loop = nullptr;
    {
        std::unique_lock<std::mutex> lock(mutex_);
        
        while(loop_ == nullptr){
            cond_.wait(lock);
        }
        loop = loop_;
    }
    return loop;
}

void EvevtLoopThread::ThreadFunc(){
    EventLoop loop;                   // create a n eventloop, achieve one loop per thread
    
    if(callback_){
        callback_(&loop);
    }
    {
        std::unique_lock<std::mutex> lock(mutex_);
        loop_ = &loop;
        cond_.notify_one();
    }

    loop.loop();
    std::unique_lock<std::mutex> lock(mutex_);
    loop_ = nullptr;
    
}


}