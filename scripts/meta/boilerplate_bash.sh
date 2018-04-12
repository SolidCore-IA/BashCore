#!/bin/bash
## 3- run "chmod +x /file.sh" to make script excutable
# _____________________________________________________________________________________________________________________________
# __________               .__      __________       .__.__                         __________.__          __          
# \______   \_____    _____|  |__   \______   \ ____ |__|  |   ___________          \______   \  | _____ _/  |_  ____  
#  |    |  _/\__  \  /  ___/  |  \   |    |  _//  _ \|  |  | _/ __ \_  __ \  ______  |     ___/  | \__  \\   __\/ __ \ 
#  |    |   \ / __ \_\___ \|   Y  \  |    |   (  <_> )  |  |_\  ___/|  | \/ /_____/  |    |   |  |__/ __ \|  | \  ___/ 
#  |______  /(____  /____  >___|  /  |______  /\____/|__|____/\___  >__|             |____|   |____(____  /__|  \___  >
#         \/      \/     \/     \/          \/                    \/                                    \/          \/ 
# _____________________________________________________________________________________________________________________________
#
# __________________________________________________________________
#   Title- 
#   MakeDate- 
#   Script by MannyB [JetLife]
#   Info- 
#
# __________________________________________________________________
version="1.0"                   # Sets version variable
#
#                               v.1.0 - 
#
# __________________________________________________________________
# trapCleanup Function
# -----------------------------------
# Any actions that should be taken if the script is prematurely
# exited.  Always call this function at the top of your script.
# -----------------------------------
function trapCleanup() {
  echo ""
  if is_dir "${tmpDir}"; then
    rm -r "${tmpDir}"
  fi
  die "Exit Script."  # Edit this if you like.
}
#
# Set Temp Directory
# -----------------------------------
# Create temp directory with three random numbers and the process ID
# in the name.  This directory is removed automatically at exit.
# -----------------------------------
tmpDir="/tmp/${scriptName}.$RANDOM.$RANDOM.$RANDOM.$$"
(umask 077 && mkdir "${tmpDir}") || {
  die "Could not create temporary directory! Exiting."
}
#
# Logging
# -----------------------------------
# Log is only used when the '-l' flag is set.
# To never save a logfile change variable to '/dev/null'
# -----------------------------------
logFile="$HOME/Desktop/${scriptBasename}.log"
# Trap bad exits with your cleanup function
#
trap trapCleanup EXIT INT TERM
# Exit on error. Append '||true' when you run the script if you expect an error.
set -o errexit
# Run in debug mode, if set
if [ "${debug}" == "1" ]; then
  set -x
fi
# Exit on empty variable
if [ "${strict}" == "1" ]; then
  set -o nounset
fi
#
# __________________________________________________________________
#    _____________   ___  ______
#   / __/_  __/ _ | / _ \/_  __/
#  _\ \  / / / __ |/ , _/ / /   
# /___/ /_/ /_/ |_/_/|_| /_/    
# ___________________________________________________________________
# below rights output of command to file.txt (file will be created where the script is run; usally ~/.scripts [if run as root it will be at /root])
command > ~/file.txt

#create wait between commands
sleep 10
echo "This is a shell script"  

#create variable for scripts below
SOMEVAR='variable stuff'  
echo "$SOMEVAR"
#
##
###
safeExit # Exit cleanly