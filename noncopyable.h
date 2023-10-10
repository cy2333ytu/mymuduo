#ifndef NONCPPYABLE__H
#define NONCPPYABLE__H

namespace ccy{

/*
inherited from noncopyable, derived class objects can be constructed and deconstructed normally,
but cannot be copied or assign values

*/

class noncopyable{

public:
    noncopyable(const noncopyable&) = delete;
    noncopyable& operator=(const noncopyable&) = delete;

protected:
    noncopyable() = default;
    ~noncopyable() = default;

};

}
#endif