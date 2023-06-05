#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
set -oue pipefail

systemctl set-default graphical.target
systemctl enable lightdm

echo "d /var/lib/lightdm 750 lightdm lightdm -" > /usr/lib/tmpfiles.d/lightdm.conf

# plymouth-set-default-theme elementary -R
