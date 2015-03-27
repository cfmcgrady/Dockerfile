FROM 192.168.100.13:5000/mesos

ADD http://192.168.100.4/omega/spark-1.3.0-bin-hadoop2.4-2.tgz /spark.tgz

RUN tar -zxf spark.tgz && \
    mv /spark-1.3.0-bin-hadoop2.4 /spark && \
    useradd hdfs
ADD core-site.xml /spark/conf/core-site.xml
ADD hdfs-site.xml /spark/conf/hdfs-site.xml
ADD spark-defaults.conf /spark/conf/spark-defaults.conf
ADD spark-env.sh /spark/conf/spark-env.sh
