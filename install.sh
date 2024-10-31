#!/bin/bash

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update
sudo apt install zip

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
nvm install 23

sudo apt update && sudo apt install --no-install-recommends yarn

curl -fsSL https://deno.land/install.sh | sh

wget -qO- https://get.pnpm.io/install.sh | ENV="$HOME/.profile" SHELL="$(which bash)" bash -

git config --global user.email "octave.boelle@gmail.com"
git config --global user.name "Octave"