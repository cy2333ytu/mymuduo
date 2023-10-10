
#include<iostream>
#include"InetAddress.h"

int main(){

    ccy::InetAddress addr(8080);
    std::cout<<addr.toIpPort()<<std::endl;
    return 0;
}