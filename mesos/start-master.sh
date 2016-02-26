#!/bin/bash
#IP=`ifconfig eth10 | grep 'inet addr:' | cut -d: -f2 | awk '{print $1}'`
IP=172.17.131.30
docker run -d \
-e MESOS_HOSTNAME=$IP \
-e MESOS_IP=$IP \
-e MESOS_QUORUM=1 \
-e MESOS_ZK=zk://localhost:2181/mesos \
--name mesos-master --net host --restart always mesos:0.27.1-2.0.226.ubuntu1404 mesos-master --work_dir=/tmp/mesos
