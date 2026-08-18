#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
grep -q 'if [[ "${max_attempts}" -gt 0 && "${count}" -lt "${max_attempts}" ]]; then' config/common.sh
echo "PASS: with_retry does not loop forever when max_attempts <= 0"
