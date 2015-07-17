FROM ubuntu:14.04
MAINTAINER Chen Fu fchen@dataman-inc.com

#install wget
RUN apt-get install -y wget

#install dataman mesos
RUN wget -O - http://get.dataman.io/repos/ubuntu/key | apt-key add - && sudo echo "deb http://get.dataman.io/repos/ubuntu ./" > /etc/apt/sources.list.d/dataman.list &&  apt-get update && sudo apt-get -y install mesos 

RUN apt-get install -y curl

CMD ["/usr/sbin/mesos-slave"]
