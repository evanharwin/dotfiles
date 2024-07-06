# Dotfiles

## Setup on new machine

First setup the repo:

```bash
cd ~
git init .
git remote add https://github.com/evanharwin/dotfiles
git fetch
```

Then run the install steps below.

## Installs

### Neovim

#### Arch Linux

```bash
sudo pacman --sync neovim
```

#### Debian

```bash
sudo apt-get install neovim
```

### RipGrep

#### Arch Linux

```bash
sudo pacman --sync ripgrep
```

#### Debian

```bash
sudo apt-get install ripgrep
```
