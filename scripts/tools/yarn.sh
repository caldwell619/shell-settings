#!/bin/sh

BICyan="\033[1;96m"    # Bold Cyan


# Reset
Color_Off="\033[0m"    # Text Reset


printf "\n\n$BICyan$( echo Installing yarn )$Color_Off"
printf "\n\n"

brew install yarn

