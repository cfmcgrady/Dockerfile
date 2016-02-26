FROM ubuntu:14.04

MAINTAINER Chen Fu <chen_mcgrady@126.com> 

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

RUN apt-get update && apt-get install -y curl openjdk-7-jre-headless python

RUN curl -fL http://apache.opencas.org/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz | tar xzf - -C /opt && mv /opt/zookeeper-3.4.6 /opt/zookeeper

VOLUME /tmp/zookeeper

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/opt/zookeeper/bin/zkServer.sh", "start-foreground"]

