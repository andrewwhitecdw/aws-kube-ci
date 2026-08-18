#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
grep -q 'curl -LO https://dl.k8s.io/release/${K8S_VERSION}/bin/linux/${ARCH}/kubectl' config/install_kubernetes.sh
! grep -q 'curl -LO https://dl.k8s.io/release/${K8S_VERSION}/bin/linux/amd64/kubectl' config/install_kubernetes.sh
echo "PASS: kubectl download uses ARCH"
