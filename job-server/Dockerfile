ROM 192.168.100.13:5000/dataman

ENV SPARK_JOBSERVER_HOME /jobserver
ENV DEBIAN_FRONTEND noninteractive

ADD http://192.168.100.6:2486/libmesos-0.21.1.so /libmesos.so
ADD http://192.168.100.6:2486/spark-1.2.1-bin-hadoop2.4.tgz /spark-1.2.1-bin-hadoop2.4.tgz
ADD http://192.168.100.6:2486/jobserver.tgz /jobserver.tgz
ADD http://192.168.100.6:2486/jobserver/run.sh /run.sh 

RUN apt-get update && \
    apt-get install -y openjdk-7-jdk libsvn-dev && \
    tar -zxf jobserver.tgz && \
    mv spark-jobserver-0.5.0 jobserver && \
    tar -zxf spark-1.2.1-bin-hadoop2.4.tgz && \
    ln -sf spark-1.2.1-bin-hadoop2.4 spark && \
    chmod 777 /libmesos.so && \
    chmod u+x /run.sh
