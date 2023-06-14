#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Simon Micheneau inspired of Erik Dubois
# Website 	: 	https://www.simon-micheneau.fr/
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# Let's update apt first.

# Remove un-needed extra packages for head-less server operation.

sudo apt-get remove --auto-remove ubuntu-gnome-desktop

sudo apt-get purge --auto-remove ubuntu-gnome-desktop

sudo apt-get autoremove 



#software from 'normal' repositories
sudo apt-get install -y apt-transport-https openssl software-properties-common git curl ca-certificates zlib1g libssl-dev
sudo apt-get install -y ppa-purge ffmpeg


###############################################################################################

# installation of zippers and unzippers
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller


echo "################################################################"
echo "##################    core software installed  #################"
echo "################################################################"
