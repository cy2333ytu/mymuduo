#ifndef POLLER__H
#define POLLER__H
#include<vector>

#include"noncopyable.h"
#include"Timestamp.h"

#include<vector>
#include<unordered_map>

namespace ccy{

class Channel;
class EventLoop;

class Poller: noncopyable{
public:
    using ChannelList = std::vector<Channel*>;

    Poller(EventLoop *loop);
    virtual ~Poller() = default;

    virtual Timestamp poll(int timeoutMs, ChannelList *activateChannels) = 0;
    virtual void updateChannel(Channel *channel) = 0;
    virtual void removeChannel(Channel *channel) = 0;

    virtual bool hasChannel(Channel *channel) const;

    static Poller* newDefaultPoller(EventLoop *loop);

protected:
    using ChannelMap = std::unordered_map<int, Channel*>;
    ChannelMap channels_;
private:
    EventLoop *owerLoop_;
};


}

#endif