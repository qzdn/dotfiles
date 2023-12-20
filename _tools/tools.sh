# alacritty - terminal
# picom - compositor
# rofi - dmenu alternative
# mc, pcmanfm - file managers
# feh - image viewer+bg w/ i3
# ttf-jetbrains-mono, ttf-font-awesome - fonts
# pavucontrol, playerctl - volume and media buttons control
# mangohud, goverlay - game monitoring
# telegram-desktop, discord, steam, yt-dlp, streamlink - entertainments
# 
# AUR
# yay - package manager
# yewtube - yt in terminal
# chatterino2-git - twitch chat

sudo pacman -S alacritty picom rofi mc pcmanfm feh ttf-jetbrains-mono ttf-font-awesome pavucontrol playerctl mangohud goverlay telegram-desktop discord steam yt-dlp streamlink

pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si