#!/bin/bash -x
## https://www.cloudtechnologyexperts.com/kubeadm-on-aws/

sudo apt-get update

sudo apt-get install -y apt-transport-https

sudo su -
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF

apt-get update

apt-get install -y docker.io

apt-get install -y kubelet kubeadm kubectl kubernetes-cni

systemctl enable docker.service