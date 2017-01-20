#!/bin/sh

sudo yum install epel-release docker git -y

sudo systemctl enable docker
sudo systemctl start docker

sudo systemctl restart network.service
