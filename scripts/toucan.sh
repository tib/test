#!/usr/bin/env bash
set -euo pipefail

log() { printf -- "** %s\n" "$*" >&2; }
error() { printf -- "** ERROR: %s\n" "$*" >&2; }
fatal() { error "$@"; exit 1; }

docker run --rm -v $(pwd):/app/site --entrypoint toucan toucansites/toucan generate /app/site/src /app/site/dist
