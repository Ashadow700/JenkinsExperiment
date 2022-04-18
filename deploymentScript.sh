#!/bin/bash

pid=$(lsof -t -i :4242 -s TCP:LISTEN)
echo "pid: $pid"

if [ -n "$pid" ]; then
  echo "Shutting $pid down"
  kill -15 $pid
else
  echo "doing nothing"
fi








#mvn clean compile exec:java &

#export JENKINS_NODE_COOKIE=dontKillMe
#export BUILD_ID=dontKill

#echo "jen node: $JENKINS_NODE_COOKIE"
#echo "buildid: $BUILD_ID"

#echo "running deploymentScript.sh"

#echo "lsof: $(lsof -t -i :4242 -s TCP:LISTEN)"

#export JENKINS_NODE_COOKIE=dontKillMe && java -jar ./target/JenkinsExperiment-spring-boot.jar >> ./output.logs &


#pid=$(lsof -t -i :4242 -s TCP:LISTEN)
#echo "pid: $pid"

#echo "ls"
#ls
#
#echo "pwd"
#pwd
