#!/bin/sh

Red="\033[0;31m"       # Red
Green="\033[0;32m"     # Green
BICyan="\033[1;96m"    # Bold Cyan


# Reset
Color_Off="\033[0m"    # Text Reset


printf "\n\n$BICyan$( echo Installing nvm )$Color_Off"
printf "\n\n"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash

source ~/.bash_profile
. ~/.nvm/nvm.sh
command -v nvm

if [ $? != 0 ]
then
  exit 1
  printf "\n\n$Red$( echo nvm did not install )$Color_Off"
fi

nvm install 12.6