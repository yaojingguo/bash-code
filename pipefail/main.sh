#!/usr/bin/env bash

set -euo pipefail

TestVet() {
  ! { ! ./tool.sh; }  |& grep -vE 'xxxx' 
  # ! { ./tool.sh 2>&1 || true; } | grep -vE 'xxxx' 
  # vet=$(./tool.sh || true)
  # ! echo $vet | grep -vE 'xxxx'
}

# TestVet
output=$(eval 'TestVet') || exit_status=$?
echo "exit_status: $exit_status"
echo "output: $output"
