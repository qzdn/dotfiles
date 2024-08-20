systemctl --user import-environment DISPLAY
sleep 1
nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=30"
#nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"
#spoof-dpi -dns-addr 1.1.1.1 -enable-doh &
/usr/bin/dunst &
feh --no-fehbg --bg-fill --randomize /home/tekk/Pictures
setxkbmap -layout us,ru -option 'grp:alt_shift_toggle'
exec i3
