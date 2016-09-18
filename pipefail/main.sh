#!/usr/bin/env bash

set -euo pipefail

# ! ./tool.sh
# echo "FINISH"

vet=$(./tool.sh 2>&1 || true)
echo "$vet" | grep -vE 'xxxx'

# TestVet() {
#   vet=$(./tool.sh 2>&1)
#   ! echo $vet
# }
# TestVet

# echo "------------------------------------------------"
# output=$(eval 'TestVet') || true
# echo "exit_status: $?"
# # echo "exit_status: $exit_status"
# echo "output: $output"
