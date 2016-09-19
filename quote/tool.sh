#!/usr/bin/env bash

set -xeuo pipefail

go tool vet -tags "$1" .
