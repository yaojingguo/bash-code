#!/usr/bin/env bash

set -euo pipefail

TestVet() {
  # Does not work if local is removed
  local vet=$(./tool.sh 2>&1)
  ! echo "$vet" | grep -vE 'xxxx'
}

TestVet
