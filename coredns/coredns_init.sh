#! /bin/bash

IP=`docker run -it --rm --privileged --pid=host debian nsenter -t 1 -m -u -n cat /etc/resolv.conf |grep nameserver | awk '{ print $2}'`
echo $IP

docker-compose down
docker-compose rm
rm -rf ./etc
mkdir -p ./etc/db 

IP=${IP} envsubst < ./corefile.tpl > ./etc/Corefile
cp -rf ./db/* ./etc/db/

docker-compose up -d
