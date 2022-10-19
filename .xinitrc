# load the console appearance settings
xrdb -merge ~/.Xresources
# set the keyboard repeat delay and speed
xset r rate 240 40
# enable VirtualBox client; remove if not using
VBoxClient-all
# start the awesome desktop environment
exec awesome
