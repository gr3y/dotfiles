#!/bin/bash
#
#   @@@@@@@@  @@@@@@@   @@@@@@@@  @@@ @@@   @@@@@@    @@@@@@@   @@@@@@   @@@       @@@@@@@@
#  @@@@@@@@@  @@@@@@@@  @@@@@@@@  @@@ @@@  @@@@@@@   @@@@@@@@  @@@@@@@@  @@@       @@@@@@@@
#  !@@        @@!  @@@  @@!       @@! !@@  !@@       !@@       @@!  @@@  @@!       @@!
#  !@!        !@!  @!@  !@!       !@! @!!  !@!       !@!       !@!  @!@  !@!       !@!
#  !@! @!@!@  @!@!!@!   @!!!:!     !@!@!   !!@@!!    !@!       @!@!@!@!  @!!       @!!!:!
#  !!! !!@!!  !!@!@!    !!!!!:      @!!!    !!@!!!   !!!       !!!@!!!!  !!!       !!!!!:
#  :!!   !!:  !!: :!!   !!:         !!:         !:!  :!!       !!:  !!!  !!:       !!:
#  :!:   !::  :!:  !:!  :!:         :!:        !:!   :!:       :!:  !:!   :!:      :!:
#   ::: ::::  ::   :::   :: ::::     ::    :::: ::    ::: :::  ::   :::   :: ::::   :: ::::
#   :: :: :    :   : :  : :: ::      :     :: : :     :: :: :   :   : :  : :: : :  : :: ::
#
#    .: FILE:          mouseButtons.sh
#    .: CREATED:       2011-04-12 18:36
#    .: AUTHOR:        Andreas Persson (greyscale, grey)
#    .: MAIL;          <andreas(at)greyscale(dot)se>
#    .: VERSION:       1.0
#    .: REVISION:      ---
#    .: DESCRIPTION:   Remaps mouse buttons to something more useful in different apps.
#                      Bind the mouse button (with xbindkeys)to this script and the button
#                      number as a argument to it.
#
#                      Add the applications class to the desired switch branch and the
#                      desired key sequense.
#
# __________________________________________________________________________________________
#  This file is distributed "as it is", like it? Then use it in whole or parts of it but be
#  minded that it comes with absolutely no warranty. But then again you got it for free..
# __________________________________________________________________________________________
#


cur=`xdotool getwindowfocus`
name=`xprop -id $cur WM_CLASS | cut -d" " -f3 | sed -e 's/,//g' | sed -e 's/"//g'`


case $1 in
  "8")
    # Button 8
    case $name in
      "eog" ) `xdotool key --window $cur Prior` ;;
      "Navigator" ) `xdotool key --window $cur ctrl+minus` ;;
      #"Navigator" ) `xdotool key --window $cur ctrl` ;; # Stop ff from going back/forward.
      "evince" ) `xdotool key --window $cur ctrl+minus` ;;
    esac
  ;;
  "9" )
    # Button 9
    case $name in
      "eog" ) `xdotool key --window $cur Next` ;;
      "Navigator" ) `xdotool key --window $cur ctrl+plus` ;;
      #"Navigator" ) `xdotool key --window $cur ctrl` ;; # Stop ff from going back/forward.
      "evince" ) `xdotool key --window $cur ctrl+plus` ;;
    esac
  ;;
esac
