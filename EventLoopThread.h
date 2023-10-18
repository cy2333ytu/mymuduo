#include"noncopyable.h"
#include"Thread.h"

#include<functional>
#include<mutex>
#include<condition_variable>
#include<string>

namespace ccy{

class EventLoop;

class EvevtLoopThread: noncopyable{
public:
    using ThreadInitCallback = std::function<void(EventLoop*)>;
    EvevtLoopThread(const ThreadInitCallback &cb = ThreadInitCallback()
    , const std::string &name = std::string());

    ~EvevtLoopThread();
    EventLoop* startLop();

private:
    void ThreadFunc();

    EventLoop *loop_;
    bool exiting_;
    Thread thread_;
    std::mutex mutex_;
    std::condition_variable cond_;
    ThreadInitCallback callback_;
};

}