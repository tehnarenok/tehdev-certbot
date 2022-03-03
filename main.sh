#!/bin/sh

./wait-for-it/wait-for-it.sh $NGINX_HOST:$NGINX_PORT

/app/mycertbot.sh
while true
do sleep 1000
done