#pragma

#include"noncopyable.h"

namespace ccy{
class InetAddress;

class Socket: noncopyable{
public:
    explicit Socket(int sockfd)
        : sockfd_{sockfd}
    {
    }
    ~Socket();

    int fd() const {return sockfd_;}
    void bindAddress(const InetAddress &localaddr);
    void listen();
    int accept(InetAddress *peeraddr);

    void shutdown();
    
    void setTcpNoDelay(bool on);
    void setReuseAddr(bool on);
    void setReusePort(bool on);
    void setKeepAlive(bool on);

private:
    int sockfd_;
};
}