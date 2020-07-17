#!/bin/bash
set -e

swapoff -a &&  sed -i '/\sswap\s/ s/^/#/' /etc/fstab

cat <<EOF > /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF
sysctl --system
