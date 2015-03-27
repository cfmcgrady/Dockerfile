export MESOS_NATIVE_JAVA_LIBRARY=/usr/local/lib/libmesos-0.21.1.so
export SPARK_LOCAL_IP=`ifconfig eth0 | awk '/inet addr/{print substr($2,6)}'`
export SPARK_LOCAL_HOSTNAME=`ifconfig eth0 | awk '/inet addr/{print substr($2,6)}'`
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:jre/bin/java::")
export MASTER=mesos://zk://192.168.101.2:2181,192.168.101.3:2181,192.168.101.4:2181/omega-mesos-prod
