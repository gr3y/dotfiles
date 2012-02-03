#!/bin/bash

RUNNING=$(/usr/bin/pacman -Qi linux | grep Version | cut -f10 -d' ')

if [ -e "$HOME/.local/tmp/saved_kernel_version" ]; then
  SAVED=$(cat "$HOME/.local/tmp/saved_kernel_version")
  if [ "$RUNNING" != "$SAVED" ]; then
    /usr/bin/notify-send -u normal -t 15000 -i /usr/share/icons/Human/48x48/status/stock_dialog-warning.png "Kernel version changed from $SAVED to $RUNNING." "Re-compile vmware modules."
    echo "$RUNNING" > "$HOME/.local/tmp/saved_kernel_version"
  fi
else
  echo "$RUNNING" > "$HOME/.local/tmp/saved_kernel_version"
fi
