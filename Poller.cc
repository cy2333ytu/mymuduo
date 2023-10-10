#include"Poller.h"
#include"channel.h"

namespace ccy{

Poller::Poller(EventLoop *loop)
    : owerLoop_{loop}{

}

bool Poller::hasChannel(Channel *channel) const{
    auto it = channels_.find(channel->fd());
    return  it != channels_.end() && it->second == channel;
}

}