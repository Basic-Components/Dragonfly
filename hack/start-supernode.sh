#!/usr/bin/env bash

set -o nounset
set -o errexit
set -o pipefail

echo "start"
echo "$@"

nginx

/opt/dragonfly/df-supernode/supernode "$@"
