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
    apt-get install -y rubygems-integration 

RUN gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/ --remove http://rubygems.org/ && \
    gem sources -l
RUN apt-get install -y ruby-dev
RUN apt-get install -y build-essential
RUN gem install redis-stat
