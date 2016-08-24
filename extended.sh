#!/usr/bin/env bash

file='/etc/passwd'
if [[ -e $file ]]; then
  echo "Password file exists."
fi
