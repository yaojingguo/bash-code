#!/usr/bin/env bash

set -euo pipefail

vet=$(./tool.sh 2>&1)
# echo "$vet" | grep -vE 'xxxx'
echo "$vet"
