i#!/bin/bash
IP=10.3.10.3
docker run -d --net host fchen/master sh -c "/usr/sbin/mesos-master --zk=zk://$IP:2181/mesos --port=5050 --log_dir=/tmp/mesos --cluster=Test --hostname=$IP --ip=$IP --quorum=1 --work_dir=/var/lib/mesos"
