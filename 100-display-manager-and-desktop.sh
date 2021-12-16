#!/bin/bash
#set -e
###############################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
###############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###############################################################################


###############################################################################
#
#   DECLARATION OF FUNCTIONS
#
###############################################################################


func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}

###############################################################################
echo "Installation of the core software"
###############################################################################

list=(
#sddm
arcolinux-wallpapers-git
#arcolinux-xfce-git
#arcolinux-local-xfce4-git
#illyria-wallpaper
gcc
bash-completion
#arcolinux-alacritty-git
numlockx
manjaro-wallpapers-18.0
manjaro-pulse
rofi
terminator
xfce4-terminal
nitrogen
#bspwm
#sxhkd
#dmenu
xdo
#feh
polkit-gnome
dnsutils
xcape
# from bspwm
pulseaudio-ctl
#notify-osd
lsd
font-manager
playerctl
pavucontrol
tk
bleachbit
nodejs
npm
#libreoffice-fresh
tumbler
timeshift
gnome-disk-utility
neovim
cmake
ninja
tree-sitter
galculator
dnsutils
micro
#i3blocks
ueberzug
sterminal
mygtkmenui
xcape
mate-notification-daemon
mate-notification-theme-slate
devmon
neofetch
update-notifier
sxhkd
#bspwm-manjaro
#bspwm-scripts
#bspwm
#bspwm-manjaro


#manjaro-bspwm-settings # conflict with i3-settings
thunar
thunar-archive-plugin
thunar-volman
bspwm-ruler
#dmenu
xdo   #Performs actions on windows (close,kill,hide etc..)
feh
sutils-git
xtitle-git
polybar
lxrandr

# development softwares
firefox
flameshot  # screenshot
meld       # compare

# sound
blueberry

#
xfce4-settings
xfce4-terminal
xfce4-screensaver
xfce4-notifyd

# fonts
ttf-meslo-nerd-font-powerlevel10k
awesome-terminal-fonts
cantarell-fonts
noto-fonts
ttf-bitstream-vera
ttf-dejavu
ttf-droid
ttf-hack
ttf-inconsolata
ttf-liberation
ttf-roboto
ttf-ubuntu-font-family
tamsyn-font

# unpack
unace
unrar
zip
unzip
sharutils
uudeview
arj
cabextract
file-roller

#arcolinux-bspwm-git
#arcolinux-bspwm-dconf-git
#arcolinux-config-bspwm-git
awesome-terminal-fonts
polybar
#arcolinux-polybar-git
arcolinux-logout-git
arcolinux-logout-themes-git
urxvt-fullscreen
urxvt-perls
urxvt-resize-font-git
yay

matcha-gtk-theme
mailspring
lightdm-gtk-greeter
lightdm-gtk-settings

virtualbox
linux515-virtualbox-host-modules

wmname
seahorse
bashtop
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

tput setaf 6;echo "################################################################"
echo "Copying all files and folders from /etc/skel to ~"
echo "################################################################"
echo;tput sgr0
cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)
cp -Rf ~/.profile ~/.profile-backup-$(date +%Y.%m.%d-%H.%M.%S)
cp -Rf ~/.bashrc ~/.bashrc-backup-$(date +%Y.%m.%d-%H.%M.%S)
cp -Rf ~/.zshrc ~/.zshrc-backup-$(date +%Y.%m.%d-%H.%M.%S)
cp -arf ./etc/skel/. ~

sudo cp -arf ./backgrounds/. /usr/share/backgrounds

tput setaf 5;echo "################################################################"
echo "Enabling sddm as display manager"
echo "################################################################"
echo;tput sgr0
#sudo systemctl enable sddm.service -f

sudo vboxdrv

tput setaf 7;echo "################################################################"
echo "You now have a very minimal functional desktop"
echo "################################################################"
echo;tput sgr0

tput setaf 11;
echo "################################################################"
echo "Reboot your system"
echo "################################################################"
echo;tput sgr0
