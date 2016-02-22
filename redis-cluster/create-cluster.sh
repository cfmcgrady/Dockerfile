#!/bin/bash
if [[ "$(docker images -q redis-trib )" == "" ]]; then                             
    docker build --tag=redis-trib .
fi
ip=$1
docker run -it --rm redis-trib /reids-trib.rb create --replicas 1 $ip:8221 $ip:8222 $ip:8223 $ip:8224 $ip:8225 $ip:8226
