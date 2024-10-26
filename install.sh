#!/bin/bash

apt update
apt install zip

curl -s "https://get.sdkman.io" | bash
source "/root/.sdkman/bin/sdkman-init.sh"
sdk install java 11.0.2-open
sdk install kotlin

git config --global user.email "octave.boelle@gmail.com"
git config --global user.name "Octave"
