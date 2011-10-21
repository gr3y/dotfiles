#!/bin/bash
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
#     .: FILE:          useful
#     .: CREATED:       2011-10-16 21:53
#     .: AUTHOR:        Andreas Persson (greyscale, grey)
#     .: MAIL:          <andreas(at)greyscale(dot)se>
#     .: VERSION:       1.0
#     .: DESCRIPTION:   Small script to show/write useful notes about a command etc.
# 
#  __________________________________________________________________________________________
#   This file is distributed "as it is", like it? Then use it in whole or parts of it but be
#   minded that it comes with absolutely no warranty. But then again you got it for free..
#  __________________________________________________________________________________________
# 

USEFUL_PATH=$HOME/docs/useful
: ${EDITOR:=/usr/bin/vim}

# Check if USEFUL_PATH directory exists.
if [ ! -d "$USEFUL_PATH" ]; then
  # Doesn't exists so quit.
  echo "Error: $USEFUL_PATH doesn't exist."
  exit 1
fi

usage() {
cat << EOF
usage: $0 [OPTION]... [PROGRAM NAME]...

Options:
  -e    Edit notes/hints file for then given program.
  -l    List all available notes/hints.
EOF
}

if [ $# -gt 0 ]; then
  while getopts ":e:h:l" OPTION; do
    case $OPTION in
      e)
        $EDITOR $USEFUL_PATH/$OPTARG.txt
        exit 0
        ;;
      l)
        for hint in $USEFUL_PATH/*.txt; do
          basename ${hint}
        done
        exit 0
        ;;
      h)
          usage
          exit 0
        ;;
      ?)
        ;;
    esac
  done
fi

if [ -e "$USEFUL_PATH/$1.txt" ]; then
  less $USEFUL_PATH/$1.txt
fi

