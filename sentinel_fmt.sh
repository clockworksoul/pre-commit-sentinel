#!/usr/bin/env bash

set -e

for f in "$@"; do
    sentinel fmt "$f"
done
