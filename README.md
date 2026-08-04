# dwm-extras

Extra scripts for dwm, most of them use [menuu](https://github.com/jacnils/menuu) by default. You can change it to dmenu by exporting $RUNLAUNCHER.

NOTE: Most of the scripts **require** [libdwm](https://github.com/jacnils/libdwm).

## Usage with dwm-swal

dwm-swal requires extra steps. To use it with dwm: Add `$HOME/.config/dwm/swal/swal_wm; libdwm --perform core_wm_reload` to ~/.config/dwm/autostart.sh and make it executable using `chmod +x ~/.config/dwm/swal/autostart.sh`.
