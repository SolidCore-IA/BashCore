#!/bin/bash
#
# _____________________________________________________________________________________________________________________________

#                  .___       __                           .__  .__                                    
#  __ ________   __| _/____ _/  |_  ____   __  _  _______  |  | |  | ___________  ______   ___________ 
# |  |  \____ \ / __ |\__  \\   __\/ __ \  \ \/ \/ /\__  \ |  | |  | \____ \__  \ \____ \_/ __ \_  __ \
# |  |  /  |_> > /_/ | / __ \|  | \  ___/   \     /  / __ \|  |_|  |_|  |_> > __ \|  |_> >  ___/|  | \/
# |____/|   __/\____ |(____  /__|  \___  >   \/\_/  (____  /____/____/   __(____  /   __/ \___  >__|   
#       |__|        \/     \/          \/                \/          |__|       \/|__|        \/       
# _____________________________________________________________________________________________________________________________
#
# __________________________________________________________________
#   Title- updatewall.sh
#   MakeDate- 11/15/17
#   Script by MannyB [JetLife]
#   Info- 
#       Changes wallpaper for desktop/ lock screen/ lightdm / grub
# __________________________________________________________________
version="1.0"                   # Sets version variable
#
#                               v.1.0 - 
#
# __________________________________________________________________
#    _____________   ___  ______
#   / __/_  __/ _ | / _ \/_  __/
#  _\ \  / / / __ |/ , _/ / /   
# /___/ /_/ /_/ |_/_/|_| /_/    
# ___________________________________________________________________
#
function trapCleanup {
  echo ""
  if is_dir "${tmpDir}"; then
    rm -r "${tmpDir}"
  fi
  die "Exit Script."  # Edit this if you like.
}
# -----------------------------------
tmpDir="/tmp/${scriptName}.$RANDOM.$RANDOM.$RANDOM.$$"
(umask 077 && mkdir "${tmpDir}") || {
  die "Could not create temporary directory! Exiting."
}
#
function imageprep
#
function deskwall
#
function lockwall
#
function lightdmwall {
  #/usr/share/images/desktop-base/wallpaper0.png
}
#
function grubwall {
  #/usr/share/images/desktop-base/wallpaper0.png
  #grub config @ /etc/default/grub
  update-grub
}
safeExit # Exit cleanly