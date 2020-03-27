#!/bin/sh

Red="\033[0;31m"       # Red
Green="\033[0;32m"     # Green
BICyan="\033[1;96m"    # Bold Cyan


# Reset
Color_Off="\033[0m"    # Text Reset


printf "\n\n$BICyan$( echo Installing X Code tools )$Color_Off"

xcode-select --install

if [ $? != 0 ]
then
  printf "\n\n$Red$( echo Installing X Code tools failed )$Color_Off"
  exit 1
fi