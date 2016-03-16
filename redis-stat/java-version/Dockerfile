FROM ubuntu:14.04
RUN echo 'deb http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse \n\
    deb http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse \n\
    deb http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse \n\
    deb http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse \n\
    deb http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse \n\
    deb-src http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse \n\
    deb-src http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse \n\
    deb-src http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse \n\
    deb-src http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse \n\
    deb-src http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse' \
    > /etc/apt/sources.list
RUN apt-get -y update && \
    apt-get install -y openjdk-7-jdk wget

RUN wget https://github.com/junegunn/redis-stat/releases/download/0.4.12/redis-stat-0.4.12.jar
