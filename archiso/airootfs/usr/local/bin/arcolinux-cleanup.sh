#!/bin/bash
#fix userid 972 error lightdm
#chage -E -1 lightdm
rm -f /etc/sudoers.d/g_wheel
rm -rf /usr/share/backgrounds/xfce
rm -f /etc/polkit-1/rules.d/49-nopasswd_global.rules
rm -r /etc/systemd/system/etc-pacman.d-gnupg.mount
rm /root/{.automated_script.sh,.zlogin}
rm /etc/mkinitcpio-archiso.conf
rm -r /etc/initcpio
rm -f /etc/systemd/system/display-manager.service
rm -rf /etc/lightdm
#cleanup xfce
for i in `ls /home/`; do rm -rf /home/$i/.config/* || exit 0; done
for i in `ls /home/`; do rm -rf /home/$i/.local/share/xfce4 || exit 0; done
pacman -Rs exo thunar xfconf libxfce4ui libxfce4util --noconfirm
rm /usr/local/bin/arcolinux-all-cores.sh
rm /usr/local/bin/arcolinux-cleanup.sh
