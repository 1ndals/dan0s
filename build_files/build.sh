#!/bin/bash

set -ouex pipefail

# Copy system files into the image
cp -avf "/ctx/system_files"/. /

### Install packages

dnf5 -y copr enable theblackdon/dcli-bootc
dnf5 -y install dcli-bootc

### Enable System Unit Files

systemctl enable podman.socket
