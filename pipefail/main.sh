#!/usr/bin/env bash

set -euo pipefail

TestVet() {
  ! { ! ./tool; }  |& grep -vE 'xxxx' 
}

# TestVet
output=$(eval 'TestVet') || exit_status=$?
echo "exit_status: $exit_status"
echo "output: $output"
