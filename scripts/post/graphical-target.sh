#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
set -oue pipefail

systemctl set-default graphical.target
systemctl enable lightdm

mkdir -p /var/lib/lightdm-data/lightdm

# plymouth-set-default-theme elementary -R
