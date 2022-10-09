#!/bin/bash

if [ $# -lt 2 ]
then
  echo "require 2 inputs: $#"
  exit 1
else
  writefile=$1
  writestr=$2
  if [ -f $writefile ]
  then
    if [ -w $writefile ]
    then
      echo $writestr > $writefile
    else
      echo "cannot overwrite file"
      exit 1
    fi
  else
    if [ ! $(mkdir -p "$(dirname "$writefile")") ]
    then
      touch $writefile
      echo $writestr > $writefile
    else
      echo "cannot create file"
      exit 1
    fi
  fi
fi
