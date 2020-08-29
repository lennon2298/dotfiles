#!/bin/bash

echo "Setting up Spicetify..."
sleep 1

# Fix small spicetify error 
# echo "prefs_path       = ${HOME}/.config/spotify/prefs" >> ${HOME}/.config/spicetify/config.ini

spicetify backup apply enable-devtool -n -l
spicetify update apply -n -l
