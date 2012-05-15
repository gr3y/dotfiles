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
#     .: FILE:          check_kernel_version.sh                                                                             
#     .: CREATED:       2012-04-07 22:50                                                                                    
#     .: AUTHOR:        Andreas Persson (greyscale, grey)                                                                   
#     .: MAIL:          <andreas(at)greyscale(dot)se>                                                                       
#     .: VERSION:       1.0                                                                                                 
#     .: DESCRIPTION:   Query:s the package database for version of the instaled kernel,                                    
#                       and compares it to the version number saved from the run before.                                    
#                                                                                                                           
#                       If they don't match then launch vmware-gksu and rebuild the                                         
#                       kernel modules.                                                                                     
#                                                                                                                           
#  __________________________________________________________________________________________                               
#   This file is distributed "as it is", like it? Then use it in whole or parts of it but be                                
#   minded that it comes with absolutely no warranty. But then again you got it for free..                                  
#  __________________________________________________________________________________________                               
#

RUNNING=$(/usr/bin/pacman -Qi linux | grep Version | cut -f10 -d' ')

if [ -e "$HOME/.local/tmp/saved_kernel_version" ]; then
  SAVED=$(cat "$HOME/.local/tmp/saved_kernel_version")
  if [ "$RUNNING" != "$SAVED" ]; then
    /usr/bin/notify-send -u normal -t 15000 -i /usr/share/icons/Human/48x48/status/stock_dialog-warning.png "Kernel version changed from $SAVED to $RUNNING." "Re-compile vmware modules."
    
    #MSG="Kernel version changed from $SAVED to $RUNNING. Enter root password to re-rcompile the vmware modules." 
    
    #/usr/bin/vmware-gksu -u root --message "$MSG" 'vmware-modconfig --console --install-all'
    echo "$RUNNING" > "$HOME/.local/tmp/saved_kernel_version"
  fi
else
  echo "$RUNNING" > "$HOME/.local/tmp/saved_kernel_version"
fi
