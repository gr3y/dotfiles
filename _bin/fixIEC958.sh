#!/usr/bin/bash
# Mutes IEC958 (SPDIF) on card 0 so analog output works.

/usr/bin/amixer -c 0 set 'IEC958',0 'Playback' 'off' > /dev/null 2>&1
/usr/bin/amixer -c 0 set 'IEC958',0 mute > /dev/null 2>&1
