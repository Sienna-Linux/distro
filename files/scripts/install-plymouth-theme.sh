#!/bin/bash

set -ueo pipefail

dnf5 install -y plymouth-plugin-script

git clone https://github.com/adi1090x/plymouth-themes.git
cp -r plymouth-themes/pack_1/connect /usr/share/plymouth/themes/
rm -rf plymouth-themes

plymouth-set-default-theme connect

echo 'omit_drivers+=" nvidia_peermem nvidia_uvm "' > /etc/dracut.conf.d/omit-uneeded-nvidia-modules.conf
