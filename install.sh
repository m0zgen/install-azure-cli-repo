#!/bin/bash
# Install Azure CLI for CentOS / Fedora
# Created by Yevgeniy Goncharov, https://sys-adm.in

# Import the Microsoft repository key
rpm --import https://packages.microsoft.com/keys/microsoft.asc

# Create local azure-cli repository
cat <<EOF >/etc/yum.repos.d/azure-cli.repo
[azure-cli]
name=Azure CLI
baseurl=https://packages.microsoft.com/yumrepos/azure-cli
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF

# Install Azure CLI
yum install azure-cli -y

# Show az version
az --version | grep azure-cli