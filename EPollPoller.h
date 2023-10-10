/* ************************************************************************
> File Name:     EPollPoller.h
> Author:        Yunzhe Su
> Created Time:  Tue 10 Oct 2023 10:49:04 AM CST
> Description:   
 ************************************************************************/
#pragma once
#include<vector>
#include"Poller.h"
#include<sys/epoll.h>

namespace ccy{
class Channel;

class EPollerPoller: public Poller
{
public:
    EPollerPoller(EventLoop *loop);
    /*
    通过在派生类中的析构函数前面使用 override，明确地告诉编译器，打算覆盖基类中的虚析构函数
    */
    ~EPollerPoller() override;           
    Timestamp poll(int timeoutMs, ChannelList *activateChannels) override;
    void updateChannel(Channel *channel) override;
    void removeChannel(Channel *channel) override;

private:
    static const int kInitEventListSize = 16;
    // 填写活跃的连接
    void fillActivateChannels(int numEvents, ChannelList *activateChannels) const;
    void update(int operation, Channel * channel);

    using EventList = std::vector<epoll_event>;
    int epollfd_;
    EventList events_;
};

}