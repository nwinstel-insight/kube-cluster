#!/bin/sh
sudo kubeadm init --control-plane-endpoint "192.168.2.35:6443" \
     --upload-certs --cri-socket "/run/containerd/containerd.sock" \
     --pod-network-cidr 11.42.0.0/16 \
     --service-cidr 11.43.0.0/16
