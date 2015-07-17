i#!/bin/bash
IP=10.3.10.3
docker run -d \
--net=host \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /usr/bin/docker:/usr/bin/docker \
-v /sys:/sys \
fchen/slave sh -c "GLOG_v=1 /usr/sbin/mesos-slave --master=zk://$IP:2181/mesos --log_dir=/var/log/mesos --hostname=$IP --ip=$IP --isolation=cgroups/cpu,cgroups/mem --containerizers=docker,mesos"
