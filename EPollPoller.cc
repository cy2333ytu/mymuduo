#include<cstring>
#include<errno.h>
#include <unistd.h>

#include"EPollPoller.h"
#include"Logger.h"
#include"channel.h"

namespace ccy{

const int kNew = -1;
const int kAdded = 1;
const int kDeleted = 2;

EPollerPoller::EPollerPoller(EventLoop *loop)
    :Poller(loop)
    , epollfd_(::epoll_create1(EPOLL_CLOEXEC))
    , events_(kInitEventListSize)
{
    if(epollfd_ < 0){
        LOG_FATAL("epoll_create error:%d \n", errno);
    }
}

EPollerPoller::~EPollerPoller(){
    ::close(epollfd_);
}

Timestamp EPollerPoller::poll(int timeoutMs, ChannelList *activateChannels){

    LOG_INFO("func: %s => fd total count:%lu \n", __FUNCTION__,channels_.size());
    int numEvents = ::epoll_wait(epollfd_, &*events_.begin(), static_cast<int>(events_.size()), timeoutMs);
    Timestamp now(Timestamp::now());

    int savedErrno = errno;
    if(numEvents > 0){
        LOG_INFO("%d events happened \n", numEvents);
        fillActivateChannels(numEvents, activateChannels);
        
        if(numEvents == events_.size()){
            events_.resize(events_.size() * 2);
        }else if(numEvents == 0){
            LOG_DEBUG("%s timeout! \n", __FUNCTION__);
        }else{
            if(savedErrno != EINTR){
                errno = savedErrno;
                LOG_ERROE("EPollPoller::poll() err");
            }
        }
    }
    return now;
}

void EPollerPoller::updateChannel(Channel *channel){
    const int index = channel->index();
    LOG_INFO("func: %s => fd: %d events: %d index: %d \n", __FUNCTION__, channel->fd(), channel->events(), index);
    
    if(index == kNew || index == kDeleted){
        if(index == kNew){
            int fd = channel->fd();
            channels_[fd] = channel;
        }
        channel->set_index(kAdded);
        update(EPOLL_CTL_ADD, channel);
        
    }else{      // channel 已经在poller上注册过了 
        int fd = channel->fd();
        if(channel->isNoneEvent()){
            update(EPOLL_CTL_DEL, channel);
            channel->set_index(kDeleted);
        }else{
            update(EPOLL_CTL_MOD, channel);
        }
    }
}

void EPollerPoller::removeChannel(Channel *channel){
    int fd = channel->fd();
    channels_.erase(fd);

    LOG_INFO("func: %s => fd: %d\n", __FUNCTION__, fd);


    int index = channel->index();
    if(index == kAdded){
        update(EPOLL_CTL_DEL, channel);
    }
    channel->set_index(kNew);
}

void EPollerPoller::fillActivateChannels(int numEvents, ChannelList *activateChannels) const{
    for(int i = 0; i<numEvents; i++){
        Channel *channel = static_cast<Channel*>(events_[i].data.ptr);
        channel->set_revents(events_[i].events);
        activateChannels->push_back(channel);
    }
}

void EPollerPoller::update(int operation, Channel * channel){
    epoll_event event;
    memset(&event, 0, sizeof event);

    int fd = channel->fd();
    
    event.events = channel->events();
    event.data.fd = fd;
    event.data.ptr = channel;

    if(::epoll_ctl(epollfd_, operation, fd, &event) < 0){
        if(operation == EPOLL_CTL_DEL){
            LOG_ERROE("epoll_ctl del error:%d\n", errno);
        }else{
            LOG_FATAL("epoll_ctl add/mod error:%d\n", errno);
        }
    }
}

}
