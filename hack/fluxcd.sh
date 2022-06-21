#!/bin/sh

kubectl create ns flux-system
sleep 5
cat ~/.config/sops/age/keys.txt | kubectl -n flux-system create secret generic sops-age \
--from-file=age.agekey=/dev/stdin



flux bootstrap github \
  --owner=nwinstel-insight \
  --repository=kube-cluster \
  --branch=main \
  --path=./cluster/base \
  --personal
