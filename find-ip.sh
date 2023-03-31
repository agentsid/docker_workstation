#!/bin/bash
echo "[docker_host]" >> /home/siddharth/inventory/hosts
for i in  $(docker ps -q) ; do
    echo "$i"
    docker exec -it $i  hostname -i >> /home/siddharth/inventory/hosts
done


