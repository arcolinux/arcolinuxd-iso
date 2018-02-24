#!/bin/bash
set -e
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# ArcoLinux	: 	https://arcolinux.info/
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "building local"


echo "Deleting the build folder if one exists - takes some time"

# cleaning folder
[ -d ~/arcolinuxd-build ] && sudo rm -rf ~/arcolinuxd-build

echo "Copying files and folder to ~/arcolinuxd-build"

sudo cp -r ../../arcolinuxd-iso ~/arcolinuxd-build



cd ~/arcolinuxd-build/archiso/


echo "################################################################"
read -p "In order to build an iso we need to clean your cache (y/n)?" choice

	case "$choice" in
 	 y|Y ) sudo pacman -Sc;;
 	 n|N ) echo "Script has stopped. Nothing changed." & exit;;
 	 * ) echo "Type y or n." & echo "Script ended!" & exit;;
	esac


echo "Making the Iso"

sudo ./build.sh -v
