#!/bin/bash
###########################################################################################################################
# To execute this script run:
# /bin/bash -c "$(curl -sL https://git.io/vMvoB)"
###########################################################################################################################

set -u

# Bug tracker URL
BUG_TRACKER="https://github.com/fusion809/fedora-scripts/issues/new"

# Messages for user
printf '\e[1;35m%-0s\e[m' "Welcome to fusion809's shell script installer for Broadcom Wireless drivers on Fedora."
printf "\n"
printf '\e[1;32m%-0s\e[m' "If you experience any bugs please report them at $BUG_TRACKER."
printf "\n"
URL="https://download1.rpmfusion.org"

# Determine the release of Fedora we're operating on.
FEDORA_VERSION=$(lsb_release -a | grep 'Release' | cut -d ':' -f 2 | sed 's/\s//g')
printf '\e[1;35m%-0s\e[m' "From what we can tell you are running Fedora ${FEDORA_VERSION}, if this is incorrect please report it at $BUG_TRACKER."
printf "\n"

# Define alias to save space later
alias sdiy=`sudo dnf install -y`

# Install RPMFusion repos
printf '\e[1;35m%-0s\e[m' "Installing RPMFusion repos..."
printf "\n"
sdiy $URL/nonfree/fedora/rpmfusion-nonfree-release-${FEDORA_VERSION}.noarch.rpm $URL/free/fedora/rpmfusion-free-release-${FEDORA_VERSION}.noarch.rpm
# Upgrade packages
printf '\e[1;35m%-0s\e[m' "Updating all installed packages..."
printf "\n"
sudo dnf update -y
# Install broadcom-wl
printf '\e[1;35m%-0s\e[m' "Installing broadcom-wl..."
printf "\n"
sdiy broadcom-wl
# modprobe broadcom-wl
printf '\e[1;35m%-0s\e[m' 'Probing the wl module...'
printf "\n"
sudo modprobe -a wl || printf '\e[1;31m%-0s\e[m' "modprobe failed. Please report this at $BUG_TRACKER." && printf "\n"
