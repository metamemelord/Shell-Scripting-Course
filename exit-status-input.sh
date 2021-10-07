#!/bin/bash

PATH=$1

if [ -z $PATH ]
then 
  echo "Path not passed as argument!"
  # -p teslls the interpreter that this read has a prompt message
  read -p "Enter a path: " PATH
fi

if [ -f $PATH ]
then 
  echo "It is a regular file"
  exit 0
elif [ -d $PATH ]
then 
  echo "Entered path is a directory"
  exit 1
else 
  echo "Entered path either doesn't exist or is other type of file"
  exit 2
fi
