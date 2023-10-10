#ifndef CHANNEL__H
#define CHANNEL__H
/*
    package sockfd and interested event, eg. EPOLLIN, EPOLLOUT
    also bind the concrete return event 
*/
#include "noncopyable.h"
#include "Timestamp.h"
#include <functional>
#include <memory>

namespace ccy{

class EventLoop;

class Channel: noncopyable{
public:
    using EventCallback = std::function<void()>;
    using ReadEventCallback = std::function<void(Timestamp)>;

    Channel(EventLoop *loop, int fd);
    ~Channel();

    void handleEvent(Timestamp reveiveTime);

    void setReadCallback(ReadEventCallback cb) { readCallback_ = std::move(cb);}    
    void setWriteCallback(EventCallback cb) { writeCallback_ = std::move(cb);}    
    void setCloseCallback(EventCallback cb) { closeCallback_ = std::move(cb);}    
    void setErrorCallback(EventCallback cb) { errorCallback_ = std::move(cb);}    

    void tie(const std::shared_ptr<void>&);

    int fd() const {return fd_;}
    int events() const {return events_;}
    void set_revents(int revt) {revents_ = revt;}

    // set the status of events
    void enableReading() {events_ |= kReadEvent; update();}
    void disableReading() {events_ &= ~kReadEvent; update();}
    void enableWriting() {events_ |= kWriteEvent; update();}
    void disableWriting() {events_ &= ~kWriteEvent; update();}
    void disableAll() {events_ = kNoneEvent; update();}

    // get the status of events;
    bool isNoneEvent() const {return events_ == kNoneEvent;}
    bool isWriting() const {return events_ & kWriteEvent;}
    bool isReading() const {return events_ & kReadEvent;}

    int index() {return index_;}
    void set_index(int idx) {index_ = idx;}

    // one loop per thread
    EventLoop* ownerLoop() {return loop_;}
    void remove();

private:
    void update();
    void handleEventWithGuard(Timestamp receiveTime);
    
    static const int kNoneEvent;
    static const int kReadEvent;
    static const int kWriteEvent;

    EventLoop *loop_;
    const int fd_;      // listen object
    int events_;        // register interested events
    int revents_;       // poller return interinsted event
    int index_;

    std::weak_ptr<void> tie_;
    bool tied_;

    ReadEventCallback readCallback_;
    EventCallback writeCallback_;
    EventCallback closeCallback_;
    EventCallback errorCallback_;

};

}

#endif