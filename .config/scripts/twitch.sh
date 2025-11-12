# x
yt-dlp -g -f 480p https://www.twitch.tv/$1 | mpv --volume=80 --no-cache --vo=gpu --hwdec=auto --playlist=-
# tty
#yt-dlp -g -f 480p https://www.twitch.tv/$1 | mpv --volume=80 --no-cache --vo=gpu --gpu-context=drm --hwdec=auto --playlist=- 
