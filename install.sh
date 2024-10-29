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
XPRA_BASE_PATH=/@${USER}/clion-gateway.gateway_agent/apps/xpra/

# Start XPRA server as the coder user
su coder -c "xpra start-desktop $DISPLAY_NUMBER \
 \
    --bind-tcp=0.0.0.0:$XPRA_PORT \
    --auth=none \
    --html=on \
    --http-base-path=$XPRA_BASE_PATH \
    --tcp-proxy=from \
    --daemon=no \
    --exit-with-client=yes \
    --tcp-auth=none &"

# Export the DISPLAY variable
export DISPLAY=$DISPLAY_NUMBER

