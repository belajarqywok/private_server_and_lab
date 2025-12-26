#!/bin/bash
set -e

DEFAULT_IF=$(ip route get 1 | awk '{print $5; exit}')
IP_ADDR=$(ip -o -4 addr show dev $DEFAULT_IF | awk '{split($4,a,"/"); print a[1]}')

curl -sfL https://get.k3s.io | K3S_NODE_IP=$IP_ADDR sh -

echo "install succes"