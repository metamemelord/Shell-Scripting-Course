#!/bin/bash

PATH=$1

if [ -z $PATH ]
then 
  echo "Path not passed as argument!"
  # -p teslls the interpreter that this read has a prompt message
  read -p "Enter a path: " PATH
fi

if [ -f $PATH ]
then echo "It is a regular file"
elif [ -d $PATH ]
then echo "Entered path is a directory"
else echo "Entered path either doesn't exist or is other type of file"
fi
