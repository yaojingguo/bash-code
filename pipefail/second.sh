#!/usr/bin/env bash

set -euo pipefail

TestVet() {
  vet=$(./tool.sh 2>&1)
  ! echo "$vet" | grep -vE 'xxxx'
}

# TestVet
echo "------------------------------------------------"
output=$(eval 'TestVet') || exit_status=$?
echo "exit_status: $exit_status"
echo "output: $output"
