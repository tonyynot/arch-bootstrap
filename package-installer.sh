### Big brain script to install arch packages. Might require some confirmations. #

echo '༼ つ ◕_◕ ༽つ Updating your system. Go grab a drink, this may take a while.'

## Update packages
sudo pacman -Syyu

echo '༼ つ ͡° ͜ʖ ͡° ༽つ System update complete. Now installing your packages.'

## Developer tools
sudo pacman -S --needed git base-devel --noconfirm
sudo pacman -S stow --noconfirm
sudo pacman -S vim --noconfirm
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

## Fonts
sudo pacman -S noto-fonts --noconfirm
sudo pacman -S ttf-hack --noconfirm
sudo pacman -s 
sudo pacman -S noto-fonts-emoji --noconfirm

## System tools
sudo pacman -S gparted --noconfirim
sudo pacman -S cmake --noconfirm

## Productivity
sudo pacman -S libreoffice-still --noconfirm
sudo pacman -S thunderbird --noconfirm
sudo pacman -S virtualbox --noconfirm

## Terminal Emulator with ZSH
sudo pacman -S alacritty --noconfirm
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

## X utilitieal
sudo pacman -S xorg-xset xorg-xrandr --noconfirm

## Security / Privacy
sudo pacman -S keepassxc --noconfirm
sudo pacman -S nextcloud --noconfirm
sudo pacman -S openvpn --confirm

## Communication
sudo pacman -S discord --noconfirm
sudo pacman -S telegram --noconfirm
sudo pacman -S nicotine+ --noconfirm
yay -S telegram-desktop-bin --noconfirm #This still has confirmation. Look into yay noconfirm tags

## i3WM Config
## *Imports custom config files from dotfiles directory
sudo pacman -S i3wm && mkdir -p ~/.config/i3 && mv ~/dotfiles/.config/i3/config ~/.config/i3/config 
yay -S autotiling
yay -S skippy-xd-git
sudo pacman -S feh --noconfirm


echo "Installing dotfiles for you based configs, sir."

# This script will automatically install configs
git clone --bare https://github.com/tonyynot/dotfiles.git $HOME/.dotfiles
function dotfiles {
       /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
   }
mkdir -p .dotfiles-backup
dotfiles checkout
if [ $? = 0 ]; then
	echo "Checked out dotfiles.";
	else
	echo "Backing up pre-existing dot files.";
	dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
fi;
dotfiles checkout
dotfiles config status.showUntrackedFiles no

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


