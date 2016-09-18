#!/usr/bin/env bash

set -euo pipefail

TestVet() {
  # solution 1
  # ! { ! ./tool.sh; }  |& grep -vE 'xxxx' 
  # solution 2
  ! { ./tool.sh 2>&1 || true; } | grep -vE 'xxxx' 
}

output=$(eval 'TestVet') || exit_status=$?
echo "exit_status: $exit_status"
echo "output: $output"
