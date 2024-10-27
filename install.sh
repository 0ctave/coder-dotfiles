#!/bin/bash

apt update
apt install -y zip

apt install -y make cmake gcc

git config --global user.email "octave.boelle@gmail.com"
git config --global user.name "Octave"
