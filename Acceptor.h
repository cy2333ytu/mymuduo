#pragma
#include"noncopyable.h"
#include"Socket.h"
#include"channel.h"

#include<functional>

namespace ccy{

class EventLoop;
class InetAddress;

class Acceptor: noncopyable
{
public:
    using NewConnectionCallback = std::function<void(int sockfd, const InetAddress&)>;
    Acceptor(EventLoop *loop, const InetAddress &listenAddr, bool reuseport);
    ~Acceptor();

    void setNewConnectionCallback(const NewConnectionCallback& cb){
        newConnectionCallback_ = cb;
    }

    bool listening() const {return listenning_;}
    void listen();

private:
    void handleRead();

    EventLoop *loop_;
    Socket acceptSocket_;
    Channel acceptChannel_;
    NewConnectionCallback newConnectionCallback_; 
    bool listenning_;

};
}