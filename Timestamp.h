#ifndef TIMESTAMP__H
#define TIMESTAMP__H

#include<iostream>
#include<string>
namespace ccy{

class Timestamp{
public:
    Timestamp();
    explicit Timestamp(int64_t microSecondsSinceEpoch);          // to avoid explict transform

    static Timestamp now();
    std::string toString() const;

private:
    int64_t microSecondsSinceEpoch_;
};

}
#endif