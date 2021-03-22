## Update packages
sudo pacman -Syy

## Developer tools
sudo pacman -S --needed git base-devel --noconfirm
sudo pacman -S vim --noconfirm

## Fonts
sudo pacman -S noto-fonts

## System tools
sudo pacman -S gparted --noconfirm

## Pull dotfiles repo
sudo git clone https://github.com/ChristianChiarulli/dotfiles.git ~/dotfiles

## Terminal Emulator with ZSH
## *Imports custom alacritty terminal config from dotfiles directory
sudo pacman -S alacritty --noconfirm && mkdir ~/.config/alacritty && mv ~/dotfiles/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
sudo pacman -S zsh zsh-completions --noconfirm

## yay package installer (Arch User Repo)
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si --noconfirm && cd ..

## yay installs
yay -S brave-bin
yay -S autotiling

## Install Suckless software
git clone https://git.suckless.org/dmenu && cd dmenu && sudo make clean install && cd ..

## File Navigation
sudo pacman -S ranger --noconfirm
sudo pacman -S pcmanfm --noconfirm

## X utilities
sudo pacman -S xorg-xset xorg-xrandr --noconfirm

## Security / Privacy
sudo pacman -S keepassxc --noconfirm
sudo pacman -S nextcloud --noconfirm
sudo pacman -S openvpn --confirm

## Communication
sudo pacman -S discord --noconfirm
sudo pacman -S telegram --noconfirm
sudo pacman -S nicotine+ --noconfirm
sudo pacman -S telegram-desktop --noconfirm

## i3WM Config
## *Imports custom config files from dotfiles directory
sudo pacman -S i3wm && mkdir -p ~/.config/i3 && mv ~/dotfiles/.config/i3/config ~/.config/i3/config 

## RUN LAST ##
## ZSH config #


