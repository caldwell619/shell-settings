#!/bin/sh

Red="\033[0;31m"       # Red
Green="\033[0;32m"     # Green
BICyan="\033[1;96m"    # Bold Cyan


# Reset
Color_Off="\033[0m"    # Text Reset


printf "\n\n$BICyan$( echo 'Creating an ssh key for GitHub' )$Color_Off"
printf "\n\n"

read -p "What is the email you want to associate with the key? ->  " email
printf "\n\nWhen you're prompted to 'Enter a file in which to save the key,' press Enter. This accepts the default file location.\n\n"
ssh-keygen -t rsa -b 4096 -C $email
echo
printf "\n Copying the SSH to your clipboard.. \n\n"
pbcopy < ~/.ssh/id_rsa.pub
printf "\nDone!\nThe SSH key is copied to the clipboard"

open https://github.com/settings/keys