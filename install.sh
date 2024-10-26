#!/bin/bash

sudo apt update
sudo apt install -y openjdk-21-jdk

curl -s "https://get.sdkman.io" | bash
sdk install java 11.0.2-open
sdk install kotlin

git config --global user.email "octave.boelle@gmail.com"
git config --global user.name "Octave"
