# !/usr/bin/bash
#
#    @@@@@@@@  @@@@@@@   @@@@@@@@  @@@ @@@   @@@@@@    @@@@@@@   @@@@@@   @@@       @@@@@@@@
#   @@@@@@@@@  @@@@@@@@  @@@@@@@@  @@@ @@@  @@@@@@@   @@@@@@@@  @@@@@@@@  @@@       @@@@@@@@
#   !@@        @@!  @@@  @@!       @@! !@@  !@@       !@@       @@!  @@@  @@!       @@!
#   !@!        !@!  @!@  !@!       !@! @!!  !@!       !@!       !@!  @!@  !@!       !@!
#   !@! @!@!@  @!@!!@!   @!!!:!     !@!@!   !!@@!!    !@!       @!@!@!@!  @!!       @!!!:!
#   !!! !!@!!  !!@!@!    !!!!!:      @!!!    !!@!!!   !!!       !!!@!!!!  !!!       !!!!!:
#   :!!   !!:  !!: :!!   !!:         !!:         !:!  :!!       !!:  !!!  !!:       !!:
#   :!:   !::  :!:  !:!  :!:         :!:        !:!   :!:       :!:  !:!   :!:      :!:
#    ::: ::::  ::   :::   :: ::::     ::    :::: ::    ::: :::  ::   :::   :: ::::   :: ::::
#    :: :: :    :   : :  : :: ::      :     :: : :     :: :: :   :   : :  : :: : :  : :: ::
#
#     .: FILE:          suspendScreensaver.sh
#     .: CREATED:       2011-10-03 19:01
#     .: AUTHOR:        Andreas Persson (greyscale, grey)
#     .: MAIL:          <andreas(at)greyscale(dot)se>
#     .: VERSION:       1.0
#     .: DESCRIPTION:   Suspends screensaver as long as terminal is running.
#
#  __________________________________________________________________________________________
#   This file is distributed "as it is", like it? Then use it in whole or parts of it but be
#   minded that it comes with absolutely no warranty. But then again you got it for free..
#  __________________________________________________________________________________________
#

curId=`xdotool getwindowfocus`

xdg-screensaver suspend ${curId}

