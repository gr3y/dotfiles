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
#                           .: make_links.sh - 2011-043 18:47 :.
#
#                 Setup symlinks in users home directory to the dot-files.
#
# __________________________________________________________________________________________
#  This file is distributed "as it is", like it? Then use it in whole or parts of it but be
#   minded that it comes with absolutely no warranty. But then again you got it for free..
# __________________________________________________________________________________________
#

cur_dir=$(pwd)
found_err=0

GREEN=$'\e[0;32m'
RED=$'\e[0;31m'
YELLOW=$'\e[0;33m'
NORMAL=$'\e[00m'

for file in _*; do
  source_file=$cur_dir/$file
  dot_file=${file/_/.}
  target_file=$HOME/$dot_file

  # Check if the dot-file already exists.
  if [ -e $target_file ]; then
    # Is it a link?
    if [ -L $target_file ]; then
      linksto=$(readlink -f $target_file)
      
      # Is the link pointing to something else other then the dot-file?
      if [ "$source_file" != "$linksto" ]; then
        echo "$RED!!! $dot_file already exists and is a link to: $linksto!$NORMAL"
        echo "    Skipping link creation of $dot_file, resolve manually."
        found_err=1
      else
        echo "$YELLOW--- $dot_file already exists and is linked correctly, doing nothing.$NORMAL"
      fi
    else
      # User already have a existing dot-file.
      echo "$RED!!! $dot_file already exists (regular file or directory)!$NORMAL"
      echo "    Skipping link creation of $dot_file, resolve manually."
      found_err=2
    fi
  else
    # Create the sym-link.
    echo "$GREEN--- $dot_file linked to $source_file.$NORMAL"
    ln -s -i $source_file $target_file
  fi
done

if [ "$found_err" -ne 0 ]; then
  echo ""
  echo "$RED!!! Done linking the dot-files but check the output and resolve those conflicts manually!$NORMAL"
  echo ""
else
  echo ""
  echo "$GREEN--- Done linking the dot-files.$NORMAL"
  echo ""
fi
