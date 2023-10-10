#include "Logger.h"
#include "Timestamp.h"

namespace ccy{

// get the only one instance of logger
Logger& Logger::instance(){
    static Logger logger;
    return logger;
}

// set level of log
void Logger::setLogLevel(int level){
    logLevel_ = level;
}

// write log: [level] time : msg
void Logger::log(const std::string& msg){
    switch(logLevel_){
        case INFO:
            std::cout<< "[INFO]";
            break;
        case ERROR:
            std::cout<< "[ERROR]";
            break;
        case FATAL:
            std::cout<< "[FATAL]";
            break;
        case DEBUG:
            std::cout<< "[DEBUG]";
            break;
        default:
            break;
    }

    std::cout<< Timestamp::now().toString() << ": "<< msg << std::endl; 

}

}
