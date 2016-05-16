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
RUN sudo apt-get install -y polipo 

RUN echo 'proxyAddress = "0.0.0.0" \n\
    proxyPort = 10101 \n\
    socksParentProxy = "127.0.0.1:10001" \n\
    socksProxyType = socks5 \n\
    allowedClients = 127.0.0.1 \n\
    logFile = "/tmp/access.log"' \
    > /etc/polipo/config
#RUN touch /tmp/access.log
CMD /usr/bin/polipo
