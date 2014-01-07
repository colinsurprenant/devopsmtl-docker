#!/bin/bash
REDIS_ID=$(docker ps --notrunc=true | grep "devopsmtl/redis" | awk '{print $1}')
export REDIS_HOST=$(docker inspect $REDIS_ID | grep IPAddress | awk -F\" '{print $4}')
echo $REDIS_HOST
