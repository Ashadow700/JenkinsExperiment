#!/bin/bash

pid=$(lsof -t -i :4242 -s TCP:LISTEN)
echo "pid: $pid"

if [ -n "$pid" ]; then
  echo "Found listener at port 4242. Shutting $pid down"
  kill -15 $pid
else
  echo "No listener found at port 4242"
fi
