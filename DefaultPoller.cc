#include"Poller.h"
#include<stdlib.h>

namespace ccy{

Poller* Poller::newDefaultPoller(EventLoop *loop){
    if(::getenv("MUDUO_USE_POLL"))
    {
        return nullptr;
    }else
    {
        return nullptr;
    }
}


}
