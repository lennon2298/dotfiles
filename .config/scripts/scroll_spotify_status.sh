#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 20 \
        --delay 1.0 \
        --match-command "playerctl --player=spotify status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true '/home/lennon/.config/scripts/get_spotify_status.sh' &

wait
