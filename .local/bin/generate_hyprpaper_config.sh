#!/bin/bash

WALLPAPER_ROOT="$HOME/pix/wallpaper"

RANDOM_WALLPAPER_DIR=$(ls "$WALLPAPER_ROOT" | shuf -n 1)
RANDOM_WALLPAPER_DIR2=$(ls "$WALLPAPER_ROOT" | shuf -n 1)


RANDOM_WALLPAPER=$(ls "$WALLPAPER_ROOT/$RANDOM_WALLPAPER_DIR" | shuf -n 1)
RANDOM_WALLPAPER2=$(ls "$WALLPAPER_ROOT/$RANDOM_WALLPAPER_DIR2" | shuf -n 1)

WALLPAPER="$WALLPAPER_ROOT/$RANDOM_WALLPAPER_DIR/$RANDOM_WALLPAPER"
WALLPAPER2="$WALLPAPER_ROOT/$RANDOM_WALLPAPER_DIR2/$RANDOM_WALLPAPER2"


#generate hyprpaper config and overwrite the old one

cat > ~/.config/hypr/hyprpaper.conf << EOF
# This config is auto generated

splash=false

preload = $WALLPAPER
preload = $WALLPAPER2

wallpaper = DP-2,$WALLPAPER
wallpaper = HDMI-A-1,$WALLPAPER2

EOF


