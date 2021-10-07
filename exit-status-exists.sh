#! /bin/bash

cat /etc/shadow 2>/dev/null
if [ $? -eq 0 ]
  then
    echo "Command succeeds!"
    exit 0
  else
    echo "Command failed!"
    exit 1
fi
