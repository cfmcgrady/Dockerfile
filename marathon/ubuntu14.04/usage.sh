i#!/bin/bash
IP=10.3.10.3
docker run -d -p 8080:8080 fchen/marathon sh -c "sudo java -Djava.library.path=/usr/local/lib:/usr/lib:/usr/lib64 -Djava.util.logging.SimpleFormatter.format=%2$s%5$s%6$s%n -Xmx512m -cp /usr/bin/marathon mesosphere.marathon.Main --master zk://$IP:2181/mesos --hostname $IP --zk zk://$IP:2181/marathon" 
