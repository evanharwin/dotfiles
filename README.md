# Dotfiles

## Setup on new machine

Setup the repo, to get the config:

```bash
cd ~
git init .
git remote add https://github.com/evanharwin/dotfiles
git fetch
```

But first run the install steps below!

## Install

### Arch Linux

```bash
sudo pacman --sync fish
curl -sS https://starship.rs/install.sh | sh
sudo pacman --sync neovim
sudo pacman --sync ripgrep
```

### Debian

```bash
# fish shell
echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/shells:fish:release:3.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:3/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish_release_3.gpg > /dev/null
sudo apt update
sudo apt install fish

curl -sS https://starship.rs/install.sh | sh
sudo apt-get install neovim
sudo apt-get install ripgrep
```

