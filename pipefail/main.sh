#!/usr/bin/env bash

set -euo pipefail

# ! ./tool.sh
# echo "FINISH"

# vet=$(./tool.sh 2>&1 || true)
# echo "$vet" | grep -vE 'xxxx'

TestVet() {
  local vet=$(./tool.sh 2>&1 || true)
  ! echo "$vet" | grep -vE 'xxxx'
}

# TestVet || true

echo "------------------------------------------------"
output=$(eval 'TestVet') || exit_status=$?
# echo "exit_status: $?"
# # echo "exit_status: $exit_status"
echo "output: $output"
