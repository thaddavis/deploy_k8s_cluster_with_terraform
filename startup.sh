#!/bin/bash

# install terraform
yum install -y yum-utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
yum -y install terraform

# install git
yum -y install git

# check terraform and git installations
terraform -v
git --version

# launch shell
sh

