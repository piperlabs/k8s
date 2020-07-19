#!/bin/bash
set -e

master={{ .product.master }}
if [ "$master" = "true" ]; then
	kubeadm init --pod-network-cidr={{ .product.pod_network_cidr }} --apiserver-advertise-address={{ .host.ip }}
fi
