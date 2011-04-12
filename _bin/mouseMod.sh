# xinput --list --short
# xinput --list-props "Razer Razer 1600dpi Mouse"
# xinput --list-props evdevMouse


# Tweak mouse acceleration
xinput --set-prop "Razer Razer 1600dpi Mouse" "Device Accel Constant Deceleration" 5
xinput set-ptr-feedback "Razer Razer 1600dpi Mouse" 2 4 1

# xset m 18/10 0 is the same as
# xinput set-ptr-feedback <device> 0 18 10
