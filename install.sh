#!/bin/bash

sudo apt update
sudo apt install zip

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
nvm install 23

curl -fsSL https://deno.land/install.sh | sh

curl -fsSL https://get.pnpm.io/install.sh | sh -


git config --global user.email "octave.boelle@gmail.com"
git config --global user.name "Octave"