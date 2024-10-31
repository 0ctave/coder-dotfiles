#!/bin/bash

sudo apt update
sudo apt install zip

curl -fsSL https://deno.land/install.sh | sh

export PATH="/home/${USER}/.deno/bin:$PATH"
deno install npm:pnpm

git config --global user.email "octave.boelle@gmail.com"
git config --global user.name "Octave"