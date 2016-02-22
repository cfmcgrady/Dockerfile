#!/bin/bash
for i in 1 2 3 4 5 6; 
do 
NAME=redis-$i
docker rm -f $NAME
done;
