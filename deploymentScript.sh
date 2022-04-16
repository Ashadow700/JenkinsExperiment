#!/bin/bash

#mvn clean compile exec:java &

echo "running deploymentScript.sh"
echo "lsof: $(lsof -t -i :4242 -s TCP:LISTEN)"
pid=$(lsof -t -i :4242 -s TCP:LISTEN)
echo "pid: $pid"

kill -15 $pid

pid=$(lsof -t -i :4242 -s TCP:LISTEN)
echo "pid: $pid"
