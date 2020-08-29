#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

numlockx on &
#exec i3-gaps
# Use 25 MiB of RAM for debug logs
exec i3 --shmlog-size=26214400
