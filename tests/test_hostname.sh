#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
grep -q 'terraform output -raw instance_hostname' aws-kube-ci.yml
grep -q 'export instance_hostname=' aws-kube-ci.yml
echo "PASS: hostname generation uses instance_hostname output"
