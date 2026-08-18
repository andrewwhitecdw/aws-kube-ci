#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
grep -q "date --date='-2 hours' '+%Y-%m-%dT%H:%M:%SZ'" cleanup/run.sh
echo "PASS: cleanup cutoff date includes seconds and Z"
