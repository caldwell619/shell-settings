#!/bin/sh

Red="\033[0;31m"       # Red
Green="\033[0;32m"     # Green
BICyan="\033[1;96m"    # Bold Cyan


# Reset
Color_Off="\033[0m"    # Text Reset


printf "\n\n$BICyan$( echo Downloading VS Code )$Color_Off"
printf "\n\n"

mkdir ~/temp

curl -sf -L https://go.microsoft.com/fwlink/?LinkID=620882 -o ~/temp/VSCode-darwin-stable.zip

unzip -q ~/temp/VSCode-darwin-stable.zip

mkdir ~/temp/VS_Code

mv Visual\ Studio\ Code.app/ ~/temp/VS_Code

cp -R ~/temp/ /Applications/

rm -r ~/temp/

# Creating symlink
sudo ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code /usr/local/bin/code