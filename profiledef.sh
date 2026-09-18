#!/usr/bin/env bash

iso_name="zachos"
iso_label="ZACHOS_$(date +%Y%m)"
iso_publisher="Zach Tech Turf"
iso_application="ZachOS Arch Linux"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=("iso")
bootmodes=("bios.syslinux" "uefi-x64.systemd-boot")
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"

file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root/customize_airootfs.sh"]="0:0:755"
)
