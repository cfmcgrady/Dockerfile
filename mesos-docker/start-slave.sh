#!/bin/bash
#IP=`ifconfig eth10 | grep 'inet addr:' | cut -d: -f2 | awk '{print $1}'`
IP=172.17.131.30
docker run -d \
-e MESOS_HOSTNAME=$IP \
-e MESOS_IP=$IP \
-e MESOS_MASTER=zk://$IP:2181/mesos \
-e MESOS_CONTAINERIZERS=docker,mesos \
-v /sys/fs/cgroup:/sys/fs/cgroup \
-v /var/run/docker.sock:/var/run/docker.sock \
--name slave --net host --privileged --restart always \
mesos-docker:0.27.1-2.0.226.ubuntu1404 mesos-slave
