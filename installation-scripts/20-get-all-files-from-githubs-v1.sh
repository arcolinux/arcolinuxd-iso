#!/bin/bash
#set -e
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# ArcoLinux : 	https://arcolinux.com/
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "Removing old files/folders from folder"
rm -rf ../archiso/airootfs/etc/skel/.bashrc

echo "getting .bashrc from iso-skel"
cp -r ../../arcolinux-root/root/.bashrc-latest ../archiso/airootfs/etc/skel/.bashrc
echo ".bashrc copied to /etc/skel"

echo "deleting neofetch line to avoid error message at start"
sed -i '/neofetch/d' ../archiso/airootfs/etc/skel/.bashrc
