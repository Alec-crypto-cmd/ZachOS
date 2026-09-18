# Recommended installation

Boot the ISO in UEFI mode and start `archinstall` from Konsole.

Recommended choices:

- Mirrors: choose a nearby country and keep the default repository settings.
- Disk layout: `Btrfs` with compression enabled (`zstd`).
- Btrfs subvolumes: keep separate `@`, `@home`, and `@log` subvolumes when offered.
- Bootloader: `systemd-boot`.
- Swap: use a swapfile if hibernation is not required; configure a swap partition for hibernation.
- Profile: KDE Plasma.
- Audio: PipeWire.
- Network: NetworkManager.
- Kernel: `linux`.
- Additional packages: `steam lutris gamemode mangohud gamescope flatpak`.
- User: create a normal user with sudo access.

After the first boot, update the system with `sudo pacman -Syu`. Enable the AUR only when you need packages that are not in the official repositories; `yay` is intentionally optional.

The image is a live installer environment. It does not silently repartition disks or install itself.
