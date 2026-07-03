# Overview

This repo is my personal dotfiles, it uses nixos and works with multiple machines and OSes

## Machines
- Macbook - Macbook pro M3 running macos
- house-of-wind - AMD Ryzen 395 AI+ with 128GB of RAM and a RTX 3090 
- luna - a framework mainboard in a desktop container used as a home server for k3s i5 13th gen
- Framework - a framework mainboard in a framework 13 i5 13th gen

## Layout
- The layout of the repo is as follows:
  - `home` - contains the home-manager configuration for apps and machines
  - `fonts` - contains the fonts used in the configuration
  - `hosts` - the nixos configuration for the machines
  - `modules` - contains the nixos modules used in the configuration
  - `nvim` - contains the neovim configuration
  - `overlays` contains custom nixpkgs overlays used in the configuration
  - `scripts` - custom ZSH scripts
  - `secrets` - contains secrets used in the configuration uses SOPS to manage secrets