#!/bin/bash

echo "running deploymentScript.sh"
lsof -t -i :4242 -s TCP:LISTEN
pid=$(lsof -t -i :4242 -s TCP:LISTEN)
echo "pid: $pid"
