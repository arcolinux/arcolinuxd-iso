#!/bin/bash
#set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
buildFolder="$HOME/arcolinuxd-build"
outFolder="$HOME/ArcoLinuxD-Out"
#changing to LTS
isoNameOld="iso_name=arcolinuxd"
isoNameNew="iso_name=arcolinuxd-lts"
calConfOld="arcolinuxd-calamares-git"
calConfNew="arcolinuxd-calamares-lts-git"

echo
echo "################################################################## "
tput setaf 2;echo "Phase 1 : get the latest bashrc from github";tput sgr0
echo "################################################################## "
echo
echo "Removing old files/folders from /etc/skel"
rm -rf ../archiso/airootfs/etc/skel/.* 2> /dev/null
echo "getting .bashrc from arcolinux-root"
wget https://raw.githubusercontent.com/arcolinux/arcolinux-root/master/etc/skel/.bashrc-latest -O ../archiso/airootfs/etc/skel/.bashrc
echo ".bashrc copied to /etc/skel"


echo
echo "################################################################## "
tput setaf 2;echo "Phase 2 : Checking if archiso is installed";tput sgr0
echo "################################################################## "
echo

package="archiso"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

		echo "################################################################"
		echo "################## "$package" is already installed"
		echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		echo "################################################################"
		echo "######### Installing with yay"
		echo "################################################################"
		yay -S --noconfirm $package

	elif pacman -Qi trizen &> /dev/null; then

		echo "################################################################"
		echo "######### Installing with trizen"
		echo "################################################################"
		trizen -S --noconfirm --needed --noedit $package

	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then

		echo "################################################################"
		echo "#########  "$package" has been installed"
		echo "################################################################"

	else

		echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		echo "!!!!!!!!!  "$package" has NOT been installed"
		echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		exit 1
	fi

fi


echo
echo "################################################################## "
tput setaf 2;echo "Phase 3 : Making sure we start with a clean slate";tput sgr0
echo "################################################################## "
echo
echo "Deleting the build folder if one exists - takes some time"
[ -d $buildFolder ] && sudo rm -rf $buildFolder


echo
echo "################################################################## "
tput setaf 2;echo "Phase 4 : Moving files to build folder";tput sgr0
echo "################################################################## "
echo
echo "Copying files and folder to build folder"
sudo cp -r ../../arcolinuxd-iso-dev $buildFolder

sudo chmod 750 $buildFolder/archiso/airootfs/etc/sudoers.d
sudo chmod 750 $buildFolder/archiso/airootfs/etc/polkit-1/rules.d
sudo chgrp polkitd $buildFolder/archiso/airootfs/etc/polkit-1/rules.d

echo
echo "################################################################## "
tput setaf 2;echo "Phase 5 : Cleaning the cache";tput sgr0
echo "################################################################## "
echo
#yes | sudo pacman -Scc

echo
echo "################################################################## "
tput setaf 2;echo "Phase 5 bis : Choose whether you want linux kernel or linux-lts kernel"
echo "If you do not know what this is about, choose linux kernel"
echo "https://wiki.archlinux.org/index.php/Kernel";tput sgr0
echo "################################################################## "
echo
echo "Choose linux kernel or linux-lts kernel"
echo
echo "1.  linux kernel"
echo "2.  linux-lts kernel"
echo "Type the number..."

read CHOICE

WDP=$buildFolder"/archiso"

case $CHOICE in

    1 )
			echo
			echo "################################################################## "
			echo "You have chosen for the linux kernel"
			echo "################################################################## "
			echo
      ;;
    2 )
			echo
			echo "################################################################## "
			echo "You have chosen for the linux-lts kernel"
			echo "################################################################## "
			echo
			FIND="calamares"
			REPLACE="calamares-lts"
			sudo sed -i "s/$FIND/$REPLACE/g" $WDP/packages.x86_64

			FIND=$calConfOld
			REPLACE=$calConfNew
			sudo sed -i "s/$FIND/$REPLACE/g" $WDP/packages.x86_64

			FIND="#arcolinux-local-repo-git"
			REPLACE="arcolinux-local-repo-git"
			sudo sed -i "s/$FIND/$REPLACE/g" $WDP/packages.x86_64

			FIND=$isoNameOld
			REPLACE=$isoNameNew
			sudo sed -i "s/$FIND/$REPLACE/g" $WDP/build.sh
      ;;
    * )
      echo "############################################"
      echo "Wrong choice - try again - keyboard issue?"
      echo "############################################"
			exit 1;
      ;;
esac

echo
echo "################################################################## "
tput setaf 2;echo "Phase 6 : Building the iso";tput sgr0
echo "################################################################## "
echo

cd $buildFolder/archiso/
sudo ./build.sh -v

echo
echo "################################################################## "
tput setaf 2;echo "Phase 7 : Copying the iso to out folder";tput sgr0
echo "################################################################## "
echo
[ -d  $outFolder ] || mkdir $outFolder
cp $buildFolder/archiso/out/arcolinux* $outFolder

echo
echo "################################################################## "
tput setaf 2;echo "Phase 8 : Making sure we start with a clean slate next time";tput sgr0
echo "################################################################## "
echo
echo "Deleting the build folder if one exists - takes some time"
[ -d $buildFolder ] && sudo rm -rf $buildFolder
