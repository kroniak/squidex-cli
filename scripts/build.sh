#!/usr/bin/env bash
set -euo pipefail

command -v docker >/dev/null 2>&1 || {
    echo >&2 "This script requires the docker to be installed"
    exit 1
}

SCRIPT_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker buildx build --platform linux/amd64 -t kroniak/squidex-cli:latest -t kroniak/squidex-cli:11.2 -f "$SCRIPT_ROOT/../src/11.2/ubuntu20.04/Dockerfile" "$SCRIPT_ROOT/../src/11.2"
