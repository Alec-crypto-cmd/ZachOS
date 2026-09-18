#!/usr/bin/env bash
set -e

systemctl enable NetworkManager.service
systemctl enable sddm.service
systemctl enable bluetooth.service
systemctl enable power-profiles-daemon.service
systemctl enable firewalld.service

install -d -m 0755 /etc/pacman.d/hooks
install -d -m 0755 /etc/skel/.config
install -d -m 0755 /usr/share/wallpapers/ZachOS

cat > /etc/profile.d/zachos-branding.sh <<'EOF'
export ZACHOS_EDITION="ZachOS"
export ZACHOS_DESKTOP="KDE Plasma / Wayland"
EOF

cat > /etc/motd <<'EOF'
Welcome to ZachOS.
Arch Linux | KDE Plasma | Wayland | Gaming ready
EOF

chmod 0755 /root/customize_airootfs.sh
