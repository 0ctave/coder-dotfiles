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
sudo xpra start :100 --bind-tcp=0.0.0.0:14500 --html=on &

# Export the DISPLAY variable
export DISPLAY=:100
