#!/usr/bin/env bash
dir=/home/jing

if cd "$dir" 2>/dev/null; then
  echo "Now in $dir"
else
  echo "Can't change to $dir."
fi
