#!/bin/bash

#mvn clean compile exec:java &

#export JENKINS_NODE_COOKIE=dontKillMe
#export BUILD_ID=dontKill

echo "jen node: $JENKINS_NODE_COOKIE"
echo "buildid: $BUILD_ID"

echo "running deploymentScript.sh"
echo "lsof: $(lsof -t -i :4242 -s TCP:LISTEN)"
pid=$(lsof -t -i :4242 -s TCP:LISTEN)
echo "pid: $pid"

kill -15 $pid

pid=$(lsof -t -i :4242 -s TCP:LISTEN)
echo "pid: $pid"

echo "ls"
ls

echo "pwd"
pwd
