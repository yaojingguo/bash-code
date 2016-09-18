#!/usr/bin/env bash

set -euo pipefail

TestVet() {
  local vet=$(./tool.sh 2>&1)
  ! echo "$vet" | grep -vE 'xxxx'
}

TestVet
