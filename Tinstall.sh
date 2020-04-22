#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vlc
sudo apt install net-tools
sed -i 's/geteuid/getppid/' /usr/bin/vlc
