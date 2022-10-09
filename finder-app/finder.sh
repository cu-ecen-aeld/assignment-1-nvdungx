#!/bin/bash
if [ $# -lt 2 ]
then
  echo "require 2 inputs: $#"
  exit 1
else
  filesdir=$1
  searchstr=$2
  if [ -d "$filesdir" ]
  then
    X=$(find $filesdir -type f | wc -l)
    Y=$(grep -r $searchstr $filesdir | wc -l)
    echo "The number of files are $X and the number of matching lines are $Y"
  else
    echo "input param 1 is not a dir"
    exit 1
  fi
fi
