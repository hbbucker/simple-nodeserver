#!/bin/bash

docker network create --driver bridge rede1 > /dev/null 2>&1

docker run --net=rede1 --rm -dit -e NODE_PORT=3000 -p 3000:3000 --name nodeserver00 bucker/node-simpleserver:latest
docker run --net=rede1 --rm -dit -e NODE_PORT=3001 -p 3001:3001 --name nodeserver01 bucker/node-simpleserver:latest
docker run --net=rede1 --rm -dit -e NODE_PORT=3002 -p 3002:3002 --name nodeserver02 bucker/node-simpleserver:latest
docker run --net=rede1 --rm -dit -e NODE_PORT=3003 -p 3003:3003 --name nodeserver03 bucker/node-simpleserver:latest
docker run --net=rede1 --rm -dit -e NODE_PORT=3004 -p 3004:3004 --name nodeserver04 bucker/node-simpleserver:latest
docker run --net=rede1 --rm -dit -e NODE_PORT=3005 -p 3005:3005 --name nodeserver05 bucker/node-simpleserver:latest
docker run --net=rede1 --rm -dit -e NODE_PORT=3006 -p 3006:3006 --name nodeserver06 bucker/node-simpleserver:latest
docker run --net=rede1 --rm -dit -e NODE_PORT=3007 -p 3007:3007 --name nodeserver07 bucker/node-simpleserver:latest
docker run --net=rede1 --rm -dit -e NODE_PORT=3008 -p 3008:3008 --name nodeserver08 bucker/node-simpleserver:latest

docker run --net=rede1 --privileged --rm -dit -p 8090:80 -v ~/logs:/var/log -v /etc/localtime:/etc/localtime:ro --name haproxy bucker/haproxy-node
