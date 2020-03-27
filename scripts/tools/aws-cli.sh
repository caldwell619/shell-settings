#!/bin/sh

Red="\033[0;31m"       # Red
Green="\033[0;32m"     # Green
BICyan="\033[1;96m"    # Bold Cyan


# Reset
Color_Off="\033[0m"    # Text Reset

printf "\n\n$BICyan$( echo Installing the AWS CLI )$Color_Off"

# AWS and SAM CLI
printf "\n\n$BICyan$( echo 'The following is the logged in user' )$Color_Off"
printf "\n\n"
logname

printf "\n\nEnter the local machine username that you wish the AWS CLI to be associated with -> "
read username
printf "\n\nInstalling as $username"
printf "\n\nWhile this is running, ensure you have your AWS Access Key ID and AWS Secret Access Key ready to go. \n\n"
sudo -u $username brew tap aws/tap
sudo -u $username brew install awscli aws-sam-cli

# Configure AWS CLI
printf "\n Configuring the AWS CLI"
printf "\n\n"
aws configure