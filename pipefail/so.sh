#!/usr/bin/env bash

set -euo pipefail

Test() {
  grep 'XXX' data
  echo 'test message'
}

Test

# output=$(eval 'Test')
# echo "output: $output"
