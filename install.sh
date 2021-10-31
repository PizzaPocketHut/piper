#!/bin/bash

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NOCOLOR='\033[0m'

echo -e "${YELLOW}↻ Installing Piper...↻${NOCOLOR}"

cd script
sudo cp piper /usr/bin

if [ -f /usr/bin/piper ]
then
    echo -e "${GREEN}Piper has been installed successfully!${NOCOLOR}"
    read -n 1 -s -r -p "Press any key to continue..."
    exit
else
    echo -e "${RED}Piper has failed to install."
    echo -e "Make sure you have permissions to access /usr/bin.${NOCOLOR}"
    read -n 1 -s -r -p "Press any key to continue..."
    exit
fi
