#!/bin/bash

# update the system and install pre-requisites
sudo apt-get update && sudo apt-get install -y apt-transport-https

# Add the GPG key for the kubectl repository to the system
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

#Update file /etc/apt/sources.list kebectl and install kubectl, kubeadm, kubelet, and kubernetes-cni (Container Networking Interface) plugin
sudo touch /etc/apt/sources.list.d/kubernetes.list
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl kubelet kubeadm kubernetes-cni
