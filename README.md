# ZachOS

A customizable Arch Linux desktop image for Zach Tech Turf.

## Included

- Arch Linux base with the standard Arch kernel
- KDE Plasma on Wayland with SDDM
- `pacman`, `archinstall`, and optional AUR tooling via `yay`
- Btrfs-friendly installation defaults and systemd-boot
- Gaming defaults: Steam, Lutris, Wine, Gamescope, MangoHud, Vulkan, GameMode, and Flatpak
- GitHub Actions builds a bootable ISO automatically and publishes it as a workflow artifact

## Get the ISO without running a local script

1. Open the **Actions** tab on GitHub.
2. Select **Build ZachOS ISO**.
3. Select **Run workflow** on `main`.
4. Download the `zachos-iso` artifact from the completed run.

A push to `main` also builds the ISO automatically. The workflow uses the official Arch Linux container and `archiso`; no Windows or Linux setup is required locally.

## Customize the image

- Add or remove packages in [`packages.x86_64`](packages.x86_64).
- Change the ISO name, publisher, and boot modes in [`profiledef.sh`](profiledef.sh).
- Replace the sample logo and wallpaper in [`branding/`](branding/).
- Change KDE defaults in [`airootfs/etc/skel/`](airootfs/etc/skel/).
- Change live-image setup in [`airootfs/root/customize_airootfs.sh`](airootfs/root/customize_airootfs.sh).
- Change installer guidance in [`INSTALL.md`](INSTALL.md).

## Installation target

The ISO is a live environment. Launch `archinstall` and select Btrfs with compression, systemd-boot, KDE Plasma, PipeWire, NetworkManager, and the `linux` kernel. See [`INSTALL.md`](INSTALL.md) for the recommended choices.

## Local build (optional)

On Arch Linux, install `archiso`, clone the repository, and run:

```bash
sudo pacman -S archiso
sudo mkarchiso -v -w work -o out .
```

The generated ISO is placed in `out/`. The GitHub Actions path above is the intended no-local-script workflow.
