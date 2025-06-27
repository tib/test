#!/usr/bin/env bash
set -euo pipefail

log() { printf -- "** %s\n" "$*" >&2; }
error() { printf -- "** ERROR: %s\n" "$*" >&2; }
fatal() { error "$@"; exit 1; }

DIR="$(pwd)"

echo $DIR;

docker run --rm -v "$(pwd)":/app/site --entrypoint toucan toucansites/toucan:1.0.0-beta.5 generate /app/site
