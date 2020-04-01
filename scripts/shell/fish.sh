#!/bin/sh

BICyan="\033[1;96m"    # Bold Cyan

# Reset
Color_Off="\033[0m"    # Text Reset


printf "\n\n$BICyan$( echo Installing FISH )$Color_Off"

brew install fish

curl -L https://get.oh-my.fish | fish

# Installs fonts for theme
# You MUST change the font on iTerm for this to work
printf "\n\n$BICyan$( echo Installing fonts )$Color_Off"
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh


# Removing fonts
printf "\n\n$BICyan$( echo Cleaning up fonts )$Color_Off"
cd ../
rm -rf fonts

set -g theme_nerd_fonts yes

# Installs theme
printf "\n\n$BICyan$( echo Installing 'bobthefish' theme )$Color_Off"
omf install bobthefish
omf theme bobthefish

# Installing nvm wrapper
printf "\n\n$BICyan$( echo Installing nvm wrapper )$Color_Off"
omf install nvm


# Sourcing the new env for fish
source ./scripts/shell/copy-config.sh