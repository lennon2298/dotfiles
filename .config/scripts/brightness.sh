#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

Level="$1"


if [[ $# -eq 0 ]]
then
	echo "Input the Brightness level you want to set[1-255]"

	read br_val
	sudo echo $br_val > /sys/class/backlight/amdgpu_bl0/brightness

else
	sudo echo $Level > /sys/class/backlight/amdgpu_bl0/brightness
fi
