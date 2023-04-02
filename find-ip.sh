#!/bin/bash
rm -rf /home/siddharth/inventory/hosts
echo "[docker_host]" >> /home/siddharth/inventory/hosts
for i in  $(docker ps -q) ; do
    #echo "$i"
    docker exec -it $i  hostname -i >> /home/siddharth/inventory/hosts
done
cat /home/siddharth/inventory/hosts

