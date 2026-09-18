#!/usr/bin/env bash

iso_name="zachos"
iso_label="ZACHOS_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Zach Tech Turf"
iso_application="ZachOS Arch Linux"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
# UEFI is intentional: systemd-boot requires UEFI and replaces the removed legacy syslinux mode.
bootmodes=('uefi.systemd-boot')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"

file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root/customize_airootfs.sh"]="0:0:755"
)
