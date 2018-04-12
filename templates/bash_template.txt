#!/bin/bash 
# 1- start script with the above line
# 2- name file "xxx.sh"
# 3- run "chmod +x /file.sh" to make script excutable

# below rights output of command to file.txt (file will be created where the script is run; usally ~/.scripts [if run as root it will be at /root])
command > ~/file.txt

#create wait between commands
sleep 10
echo "This is a shell script"  

#create variable for scripts below
SOMEVAR='variable stuff'  
echo "$SOMEVAR"

test
