#!/bin/bash
docker run -d --restart always --net host --name zookeeper zookeeper:3.4.6
