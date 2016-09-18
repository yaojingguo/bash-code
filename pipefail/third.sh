#!/usr/bin/env bash

set -euo pipefail

TestVet() {
  vet=$(./tool.sh 2>&1)
  ! echo "$vet" | grep -vE 'xxxx'
}

TestVet
