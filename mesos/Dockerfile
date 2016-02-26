FROM ubuntu:14.04
MAINTAINER Mesosphere <support@mesosphere.io>
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


RUN echo "deb http://repos.mesosphere.io/ubuntu/ trusty main" > /etc/apt/sources.list.d/mesosphere.list && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
  apt-get -y update && \
  apt-get -y install mesos=0.27.1-2.0.226.ubuntu1404 && \
  apt-get clean && rm -rf /var/lib/apt/lists/*
