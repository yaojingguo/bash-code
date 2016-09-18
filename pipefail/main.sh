#!/usr/bin/env bash

set -euo pipefail

# ! ./tool.sh
# echo "FINISH"

Redirect() {
  local vet=$(./tool.sh 1>&2)
  echo $vet
}
Redirect

# TestVet() {
#   # solution 1
#   # ! { ! ./tool.sh; }  |& grep -vE 'xxxx' 
#   # solution 2
#   # ! { ./tool.sh 2>&1 || true; } | grep -vE 'xxxx' 
#   # solution 3
#   # vet=$(./tool.sh 2>&1)
#   vet=`./tool.sh`
#   echo $vet
#   # ! echo $vet | grep -vE 'xxxx'
# }

# TestVet
output=$(eval 'Redirect') || exit_status=$?
echo "exit_status: $exit_status"
echo "output: $output"
