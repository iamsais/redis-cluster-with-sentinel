#!/bin/sh

sed -i "s/\$SENTINEL_PORT/$SENTINEL_PORT/g" /etc/redis/sentinel.conf
sed -i "s/\$SENTINEL_QUORUM/$SENTINEL_QUORUM/g" /etc/redis/sentinel.conf
sed -i "s/\$SENTINEL_DOWN_AFTER/$SENTINEL_DOWN_AFTER/g" /etc/redis/sentinel.conf
sed -i "s/\$SENTINEL_FAILOVER/$SENTINEL_FAILOVER/g" /etc/redis/sentinel.conf
sed -i "s/\$REDIS_NODE/$REDIS_NODE/g" /etc/redis/sentinel.conf
sed -i "s/\$REDIS_PORT/$REDIS_PORT/g" /etc/redis/sentinel.conf

exec docker-entrypoint.sh redis-server /etc/redis/sentinel.conf --sentinel
