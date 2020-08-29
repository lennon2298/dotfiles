#!/bin/bash
filename='/home/lennon/.cache/wal/wal'
file=$(cat /home/lennon/.cache/wal/wal) 
neofetch --w3m --source $file
