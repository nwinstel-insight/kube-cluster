# Installation

To install kubernetes:

* upate the hosts2 file with the servers in the appropriate fields (masters in the masters section, workers in the workers)

* scp cgroup_driver.sh to all nodes and execute. Once done edit the toml it creates (/etc/containerd/config.toml) and change the systemdCgroup setting to true. [Full instructions are here](https://kubernetes.io/docs/setup/production-environment/container-runtimes/#containerd)

* scp over the kube-vip.yaml to the primary control-plane server and copy it in to /etc/kubernetes/manifests **make sure the address setting is to the desired Load Balancer IP**

* scp the init.sh script to the primary control-plane server/node. Alter the attress in the --controle-plane-endpoint setting to match the address in kube-vip. Execute it. It should succeed. Copy the commands it gives for how to join other servers.

* use the command on the remaining servers.

