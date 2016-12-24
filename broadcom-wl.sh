#!/bin/bash
URL="https://download1.rpmfusion.org"
FEDORA_VERSION=$(lsb_release -a | grep 'Release' | cut -d ':' -f 2 | sed 's/\s//g')

# Install RPMFusion repos
printf '\e[1;31m%-0s\e[m' "Installing RPMFusion repos for Fedora ${FEDORA_VERSION}..."
printf "\n"
sudo dnf install -y $URL/nonfree/fedora/rpmfusion-nonfree-release-${FEDORA_VERSION}.noarch.rpm $URL/free/fedora/rpmfusion-free-release-${FEDORA_VERSION}.noarch.rpm
printf '\e[1;31m%-0s\e[m' "Updating all installed packages..."
printf "\n"
sudo dnf update -y
printf '\e[1;31m%-0s\e[m' "Installing broadcom-wl...\n"
printf "\n"
sudo dnf install -y broadcom-wl
printf '\e[1;31m%-0s\e[m' 'Probing the wl module...\n'
printf "\n"
sudo modprobe -a wl
