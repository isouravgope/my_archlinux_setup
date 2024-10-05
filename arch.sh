#!/bin/bash
sudo pacman -Syu 
sudo pacman -S htop bashtop neofetch vlc ffmpeg rust  zsh packagekit-qt5 latte-dock gimp zenity gvfs-mtp
echo -e "installing i3 and required components"
sleep 2s
sudo pacman -S i3-gaps gnome-disk-utility i3lock i3blocks gnome-screenshot rofi alacritty nautilus gedit simplescreenrecorder python-pynvim
echo -e "installing required fonts for arch linux"
sudo pacman -S ttf-caladea ttf-carlito ttf-dejavu ttf-liberation noto-fonts ttf-opensans otf-overpass ttf-roboto tex-gyre-fonts ttf-ubuntu-font-family ttf-dejavu ttf-liberation noto-fonts 
echo -e "getting some requried package from AUR"
yay -S polybar cava picom-jonaburg-git vim-plug spicetify-cli pipes.sh bonsai.sh-git ufetch-git gtop 
echo -e "setting up zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo -e "installing zsh jovial"
sleep 2s
curl -sSL https://github.com/zthxxx/jovial/raw/master/installer.sh | sudo -E bash -s $USER
echo -e "cloning the NORDIC KDE"
cd $HOME && git clone https://github.com/EliverLara/Nordic.git
echo -e "installing some misc stuff"
sleep 2s
sudo pacman -S jq feh clash
cd $HOME/Pictures && curl -LO https://raw.githubusercontent.com/thefallnn/Nord-Wallpapers/master/wallpapers/10.png
zenity --info --text="installation of the essential packages has been complete"
#UUID=7CCA4DE4CA4D9AF2 /run/media/sourav/vault ntfs defaults,noatime,x-systemd.automount,uid=1000,gid=1000,umask=007 0 2


