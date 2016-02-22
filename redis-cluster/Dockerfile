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
    > /etc/apt/sources.list && \
    sudo apt-get -y update
RUN sudo apt-get install -y rubygems-integration && \
    gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/ && \
    gem sources -l && \
    gem install redis 
ADD redis-trib.rb reids-trib.rb
