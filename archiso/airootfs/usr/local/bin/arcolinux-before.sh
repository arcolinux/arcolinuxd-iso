#!/bin/bash
echo "#################################"
echo "Start arcolinux-before.sh"
echo "#################################"

echo "Populate Core Team keys"
echo "#################################"
pacman-key --init
pacman-key --populate archlinux
pacman-key --populate arcolinux
#erik
pacman-key --lsign-key 74F5DE85A506BF64
#marco
pacman-key --lsign-key F1ABB772CE9F7FC0
#john
pacman-key --lsign-key 4B1B49F7186D8731
#stephen
pacman-key --lsign-key 02D507C6EFB8CEAA
#brad
pacman-key --lsign-key 18064BF445855549
#raniel
pacman-key --lsign-key 7EC1A5550718AB89

echo "Copy grub Vimix theme (archiso deletes /boot when making the ISO)"
echo "#################################"
mkdir -p /boot/grub/themes
cp -Rf /usr/share/grub/themes/Vimix /boot/grub/themes/

echo "#################################"
echo "Extra for ArcoLinuxD"
echo "#################################"

rm -f /etc/systemd/system/display-manager.service
rm -rf /etc/lightdm
#cleanup xfce
for i in `ls /home/`; do rm -rf /home/$i/.config/* || exit 0; done
for i in `ls /home/`; do rm -rf /home/$i/.local/share/xfce4 || exit 0; done
pacman -Rs thunar xfconf libxfce4ui libxfce4util exo --noconfirm

echo "#################################"
echo "End arcolinux-before.sh"
echo "#################################"
rm /usr/local/bin/arcolinux-before.sh
