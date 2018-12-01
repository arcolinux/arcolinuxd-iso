#!/bin/bash
rm -f /etc/sudoers.d/g_wheel
chmod 750 /etc/sudoers.d
chmod 750 /etc/polkit-1/rules.d
chgrp polkitd /etc/polkit-1/rules.d
rm -rf /usr/lib/calamares
rm -rf /usr/share/backgrounds/xfce
rm -rf /etc/skel/.config/xfce4
rm -rf /etc/skel/.config/Thunar
rm -f /etc/polkit-1/rules.d/49-nopasswd_global.rules
rm -r /etc/systemd/system/etc-pacman.d-gnupg.mount
rm /root/{.automated_script.sh,.zlogin}
rm /etc/mkinitcpio-archiso.conf
rm -r /etc/initcpio
rm /usr/bin/cleanup.sh
