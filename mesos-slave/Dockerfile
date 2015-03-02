FROM 192.168.100.13:5000/mesos

RUN apt-get update && \
    apt-get install -y libgfortran3

ENTRYPOINT ["mesos-slave"]

