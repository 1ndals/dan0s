#!/bin/bash

set -ouex pipefail

# Copy system files into the image
cp -avf "/ctx/system_files"/. /

### Install packages

#### Enable System Unit Files

systemctl enable podman.socket
