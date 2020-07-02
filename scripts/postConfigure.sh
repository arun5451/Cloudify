#!/bin/bash
yum update -y
sudo yum install -y yum-utils -y
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

echo "-----Install Docker-----"
sudo yum install docker-ce docker-ce-cli containerd.io -y

echo "-----Start Docker-----"
sudo systemctl start docker
