#!/bin/bash

function are_you_there_god ()
{
  ps aux | grep god | grep -v god
  echo $?
}

while true; do
  if [ "0" != "$(are_you_there_god)" ]; then
    echo "god seems to be missing"
  fi
  sleep 5
done
