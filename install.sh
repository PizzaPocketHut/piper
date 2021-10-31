#!/bin/bash

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NOCOLOR='\033[0m'

echo -e "${YELLOW}↻ Installing Piper...↻${NOCOLOR}"

cd script
sudo cp piper /usr/bin
cd ..
cd resources
sudo cp piper-icon.png /usr/share/icons
cp Piper.desktop /home/$USER/Desktop

if [ -f /usr/bin/piper ]
then
    echo -e "${GREEN}Piper has been installed successfully!${NOCOLOR}"
    read -p "Would you like to start Piper? [y/n]" START
    if [ $START == y ]
    then
    piper
    elif [ $START == Y ]
    then
    piper
    exit
    fi
else
    echo -e "${RED}Piper has failed to install."
    echo -e "Make sure you have permissions to access /usr/bin.${NOCOLOR}"
    read -n 1 -s -r -p "Press any key to continue..."
    exit
fi
