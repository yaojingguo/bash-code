#!/usr/bin/env bash

set -euo pipefail

Test() {
  vet=$(./tool.sh 2>&1)
  ! echo "$vet" | grep -vE 'xxxx'
  ! echo "line"
}

# Test
echo "------------------------------------------------"
output=$(eval 'Test') || exit_status=$?
echo "exit_status: $exit_status"
echo "output: $output"
