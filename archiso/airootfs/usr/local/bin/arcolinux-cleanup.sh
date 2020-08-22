#!/bin/bash
rm -f /etc/sudoers.d/g_wheel
rm -rf /usr/share/backgrounds/xfce
rm -f /etc/polkit-1/rules.d/49-nopasswd_global.rules
rm -r /etc/systemd/system/etc-pacman.d-gnupg.mount
rm /root/{.automated_script.sh,.zlogin}
rm -f /etc/systemd/system/display-manager.service
rm -rf /etc/lightdm
#cleanup xfce
for i in `ls /home/`; do rm -rf /home/$i/.config/* || exit 0; done
for i in `ls /home/`; do rm -rf /home/$i/.local/share/xfce4 || exit 0; done
pacman -Rs exo thunar xfconf libxfce4ui libxfce4util --noconfirm
rm /usr/local/bin/arcolinux-all-cores.sh
mv /etc/arcolinux-release /etc/lsb-release
pacman -R mkinitcpio-archiso --noconfirm
mv /etc/mkinitcpio.d/arcolinux /etc/mkinitcpio.d/linux.preset
rm /usr/local/bin/arcolinux-cleanup.sh
