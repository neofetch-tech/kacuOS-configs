# kacuOS-configs

# kacuOS-configs

Personal configuration files for **kacuOS**, an Arch Linux based desktop project. This repository currently contains a Lua configuration for a dark GNOME desktop setup.

## Contents

- [`rice-config.lua`](./rice-config.lua) — declares packages to install and desktop settings to apply.

## Requirements

- Arch Linux or an Arch based distribution
- GNOME
- Rust and Cargo to build `kacu-pkg`
- `sudo` access for installing packages with pacman

The Lua config uses packages from the pacman repositories configured on your system. It does not install AUR packages.

## Usage

Build and install `kacu-pkg` from the kacuOS source repository, then preview the configuration:

```bash
kacu-pkg apply ./rice-config.lua --dry-run

## Apply the configuration

Preview the changes first:

```bash
kacu-pkg apply ./rice-config.lua --dry-run
Then apply them:
kacu-pkg apply ./rice-config.lua
Review the package list and the changes described in the Lua file before applying it. Pacman will show its normal confirmation prompt before installing packages.
Customization
Edit rice-config.lua to change its package list, GNOME settings, Kitty appearance, or supported autostart entries. To use a wallpaper, add a picture-uri setting with a file:///... URI pointing to an image on your computer.
Notes
The configuration provides a dark GNOME theme, a Plank dock, and translucent Kitty terminal settings. It does not include a wallpaper or automatically arrange open windows.
This repository is a work in progress. More kacuOS configuration examples may be added over time.
```
