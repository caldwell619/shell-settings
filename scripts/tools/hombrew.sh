#!/bin/sh
Red="\033[0;31m"       # Red
Green="\033[0;32m"     # Green
BICyan="\033[1;96m"    # Bold Cyan


# Reset
Color_Off="\033[0m"    # Text Reset


printf "\n\n$BICyan$( echo INstalling Homebrew )$Color_Off"
printf "\n\n"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

if [ $? != 0 ]
then
  exit 1
  printf "\n\n$Red$( echo Homebrew did not install properly )$Color_Off"
fi