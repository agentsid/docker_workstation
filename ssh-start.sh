#!/bin/bash

echo="starting ssh services on docker container"
for i in  $(docker ps -q) ; do
    echo "$i"
    docker exec -it $i  service ssh restart
done
