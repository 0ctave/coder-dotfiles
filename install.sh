#!/bin/bash

sudo apt update
sudo apt install zip

curl -s "https://get.sdkman.io" | bash
source "/home/${USER}/.sdkman/bin/sdkman-init.sh"
sdk install java 11.0.2-open
sdk install kotlin

git config --global user.email "octave.boelle@gmail.com"
git config --global user.name "Octave"


echo "=== Display Setup :"
# Set variables
XPRA_PORT=14500

echo "== Starting Xpra server : ${DISPLAY_NUMBER} ${XPRA_PORT}"

XDG_RUNTIME_DIR=~/.xdg
XAUTHORITY=~/.Xauthority

mkdir -p $XDG_RUNTIME_DIR
mkdir -p $XAUTHORITY

# Export the DISPLAY variable
export DISPLAY=$DISPLAY_NUMBER

# Start XPRA server as the coder user
xpra start-desktop ${DISPLAY_NUMBER} \
    --bind-tcp=0.0.0.0:${XPRA_PORT} \
    --auth=none \
    --html=on \
    --tcp-proxy=from \
    --daemon=no \
    --exit-with-client=yes \
    --socket-dirs=~/.xpra \
    --socket-dir=~/.xpra \
    --notifications=no \
    --tcp-auth=none



