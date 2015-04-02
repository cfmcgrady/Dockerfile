FROM 192.168.100.13:5000/dataman

ADD http://192.168.100.4/omega/spark-notebook-0.4.0-scala-2.10.4-spark-1.3.0-hadoop-2.4.1.tgz /spark-notebook.tgz

ENV MESOS_NATIVE_JAVA_LIBRARY /libmesos-0.21.1.so

RUN apt-get update && \
    apt-get install -y libsvn-dev openjdk-7-jdk && \
    cd / && tar zxf spark-notebook.tgz && \
    rm spark-notebook.tgz && \
    mv spark-notebook-0.4.0-scala-2.10.4-spark-1.3.0-hadoop-2.4.1 spark-notebook && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /spark-notebook

CMD ["bin/spark-notebook"]
