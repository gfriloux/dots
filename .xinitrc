xset fp+ $HOME/.fonts/misc
xset fp+ $HOME/.fonts/ohsnap
xset fp+ $HOME/.fonts/terminesspowerline
xset fp+ $HOME/.fonts/tewi

[[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources

export TERM="xterm-256color"

#exec enlightenment_start
#/usr/bin/tint2 -c /home/kuri/.config/tint2/Numix_tint2/dark_dock/tint2rc &
#/usr/bin/volumeicon &
#redshift&

exec startkde
#exec i3
#E_START=enlightenment enlightenment -i-really-know-what-i-am-doing-and-accept-full-responsibility-for-it

#export XDG_CURRENT_DESKTOP=Budgie:GNOME
#exec budgie-desktop
