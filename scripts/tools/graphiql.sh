#!/bin/sh

Red="\033[0;31m"       # Red
Green="\033[0;32m"     # Green
BICyan="\033[1;96m"    # Bold Cyan


# Reset
Color_Off="\033[0m"    # Text Reset


printf "\n\n$BICyan$( echo Installing Graphiql )$Color_Off"

brew cask install graphiql