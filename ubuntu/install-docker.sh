#!/bin/bash

sudo apt update

# Install requisite packages
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# add GPG key for official docker repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# fetch distro codename
distro=$(lsb_release -a | gawk '/Codename/{print $2;}'

# add docker repo to apt sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $distro stable"

# install docker
sudo apt install docker-ce
sudo systemctl status docker
