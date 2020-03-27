#!/bin/sh

Red="\033[0;31m"       # Red
Green="\033[0;32m"     # Green
BICyan="\033[1;96m"    # Bold Cyan


# Reset
Color_Off="\033[0m"    # Text Reset


printf "\n\n$BICyan$( echo 'Running setup script for new computer' )$Color_Off"

source ./scripts/tools/homebrew.sh
source ./scripts/tools/git.sh
source ./scripts/tools/nvm.sh
source ./scripts/tools/vs-code.sh
source ./scripts/tools/aws-cli.sh

source ./scripts/shell/fish.sh
source ./scripts/shell/copy-config.sh

source ./scripts/tools/github-ssh.sh

