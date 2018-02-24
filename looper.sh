#!/usr/bin/env sh

# create database
curl -XPOST http://$INFLUXDB_HOST:$INFLUXDB_PORT/query \
    -d "q=CREATE DATABASE $INFLUXDB_DATABASE"

while [ 1 ]
do
    echo "---> Starting new test"
    ./speedtest.sh

    sleep $SPEEDTEST_FRQUENCY
done
