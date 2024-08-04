#!/bin/bash

# Enable debug output
PS4="\n\033[1;33m>>\033[0m "; set -x

LOCATION=$(realpath "$0")
DIR=$(dirname "$LOCATION")

curl -sfL https://get.k3s.io | sh -s - server --https-listen-port=26444 --cluster-init

sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
