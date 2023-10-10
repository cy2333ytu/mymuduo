#ifndef LOGGER__H
#define LOGGER__H

#include<string>
#include<iostream>

#include"noncopyable.h"

#define LOG_INFO(logmsgFormat, ...) \
    do \
    { \
        ccy::Logger &logger = ccy::Logger::instance(); \
        logger.setLogLevel(ccy::LogLevel::INFO); \
        char buf[1024] = {0}; \
        std::snprintf(buf, 1024, logmsgFormat, ##__VA_ARGS__); \
        logger.log(buf); \
    } while (0)
    
#define LOG_ERROE(logmsgFormat, ...) \
    do \
    { \
        ccy::Logger &logger = ccy::Logger::instance(); \
        logger.setLogLevel(ccy::LogLevel::ERROR); \
        char buf[1024] = {0}; \
        std::snprintf(buf, 1024, logmsgFormat, ##__VA_ARGS__); \
        logger.log(buf); \
    } while (0)

#define LOG_FATAL(logmsgFormat, ...) \
    do \
    { \
        ccy::Logger &logger = ccy::Logger::instance(); \
        logger.setLogLevel(ccy::LogLevel::FATAL); \
        char buf[1024] = {0}; \
        std::snprintf(buf, 1024, logmsgFormat, ##__VA_ARGS__); \
        logger.log(buf); \
    } while (0)

#ifdef MUDEBUG
#define LOG_DEBUG(logmsgFormat, ...) \
    do \
    { \
        ccy::Logger &logger = ccy::Logger::instance(); \
        logger.setLogLevel(ccy::LogLevel::INFO); \
        char buf[1024] = {0}; \
        std::snprintf(buf, 1024, logmsgFormat, ##__VA_ARGS__); \
        logger.log(buf); \
    } while (0)
#else 
    #define LOG_DEBUG(logmsgFormat, ...)
#endif


// INFO ERROR ATAL DEBUG
namespace ccy{

enum LogLevel{
    INFO,
    ERROR,
    FATAL,
    DEBUG,
};

class Logger: noncopyable{
public:
    static Logger& instance();
    void setLogLevel(int level);
    void log(const std::string& msg);
private:
    int logLevel_;
    Logger(){}
};



}
#endif