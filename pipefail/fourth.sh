#!/usr/bin/env bash

set -euo pipefail

output=$(eval '! echo 123') || exit_status=$?

echo "exit_status: $exit_status"
echo "output: $output"
