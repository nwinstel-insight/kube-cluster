#!/bin/sh
export VAULT_SEAL1="KvNdar7+nHs019UKidhL3rq09m1573C7bbaFUx17VKG2"
export VAULT_SEAL2="ZoRN3FimChB8vifwrZFot0H4SkmuwjDbd4sJ6fB0cvSJ"
export VAULT_SEAL3="9UnRXilAqlPUa1SGyQrNk1JiUNtuYA0IxObTnCEh6i9F"

kubectl exec --stdin=true --tty=true vault-0 -n hashicorp -- vault operator unseal $VAULT_SEAL1
kubectl exec --stdin=true --tty=true vault-1 -n hashicorp -- vault operator unseal $VAULT_SEAL1
kubectl exec --stdin=true --tty=true vault-2 -n hashicorp -- vault operator unseal $VAULT_SEAL1
kubectl exec --stdin=true --tty=true vault-0 -n hashicorp -- vault operator unseal $VAULT_SEAL2
kubectl exec --stdin=true --tty=true vault-1 -n hashicorp -- vault operator unseal $VAULT_SEAL2
kubectl exec --stdin=true --tty=true vault-2 -n hashicorp -- vault operator unseal $VAULT_SEAL2
kubectl exec --stdin=true --tty=true vault-0 -n hashicorp -- vault operator unseal $VAULT_SEAL3
kubectl exec --stdin=true --tty=true vault-1 -n hashicorp -- vault operator unseal $VAULT_SEAL3
kubectl exec --stdin=true --tty=true vault-2 -n hashicorp -- vault operator unseal $VAULT_SEAL3
