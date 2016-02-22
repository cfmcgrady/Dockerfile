#!/bin/bash
REDIS_VERSION=3.0.6
for i in 1 2 3 4 5 6; 
do 
NAME=redis-$i
PORT=822$i
docker run -d -v $PWD/:/usr/local/etc/redis/ --name $NAME --net host redis:$REDIS_VERSION redis-server /usr/local/etc/redis/redis.conf --port $PORT
done;
