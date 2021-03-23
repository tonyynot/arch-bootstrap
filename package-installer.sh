echo '༼ つ ◕_◕ ༽つ Updating your system. Go grab a drink, this may take a while.'

## Update packages
sudo pacman -Syy

echo '༼ つ ͡° ͜ʖ ͡° ༽つ System update complete. Now installing your packages.'

## Developer tools
sudo pacman -S --needed git base-devel --noconfirm
sudo pacman -S stow --noconfirm
sudo pacman -S vim --noconfirm
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## Fonts
sudo pacman -S noto-fonts
sudo pacman -S noto-fonts-emoji

## System tools
sudo pacman -S gparted --noconfirim
sudo pacman -S cmake --noconfirm

## Productivity
sudo pacman -S libreoffice-still --noconfirm
sudo pacman -S thunderbird --noconfirm
sudo pacman -S virtualbox --noconfirm

## Pull dotfiles repo
sudo git clone https://github.com/tonyynot/dotfiles.git ~/.dotfiles

## Terminal Emulator with ZSH
## *Imports custom alacritty terminal config from dotfiles directory
sudo pacman -S alacritty --noconfirm && mkdir ~/.config/alacritty && mv ~/dotfiles/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
sudo pacman -S zsh zsh-completions --noconfirm
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

## yay package installer (Arch User Repo)
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si --noconfirm && cd ..

## Browser install
yay -S brave-bin

## Multimedia
sudo pacman -S vlc --noconfirm
sudo pacman -S pulseaudio --noconfirm
sudo pacman -S projectm --noconfirm

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
yay -S telegram-desktop-bin --noconfirm

## i3WM Config
## *Imports custom config files from dotfiles directory
sudo pacman -S i3wm && mkdir -p ~/.config/i3 && mv ~/dotfiles/.config/i3/config ~/.config/i3/config 
yay -S autotiling
yay -S skippy-xd-git
sudo pacman -S feh --noconfirm

echo 'Package installation complete. Enjoy your system, King.'
echo '
⊂_ヽ
　 ＼＼
　　 ＼( ͡° ͜ʖ ͡°)
　　　 >　⌒ヽ
　　　/ 　 へ＼
　　 /　　/　＼＼
　　 ﾚ　ノ　　 ヽ_つ
　　/　/
　 /　/|
  (　(ヽ
　|　|、＼
　| 丿 ＼ ⌒)
　| |　　) /
ノ )　　Lﾉ
(_／'
