#!/bin/sh

BICyan="\033[1;96m"    # Bold Cyan

# Reset
Color_Off="\033[0m"    # Text Reset

printf "\n\n$BICyan$( echo Setting up FISH config )$Color_Off"
printf "\n\n"

cp ./config/config.fish ~/.config/fish/config.fish

refresh