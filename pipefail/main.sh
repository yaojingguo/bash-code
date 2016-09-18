#!/usr/bin/env bash

set -euo pipefail

# ! ./tool.sh
# echo "FINISH"

TestVet() {
  local vet=$(./tool.sh 2>&1)
  ! echo ":$vet" | grep -vE 'xxxx'
}

echo "----------------"
output=$(eval 'Redirect')
echo "exit_status: $?"
# echo "exit_status: $exit_status"
echo "output: $output"
