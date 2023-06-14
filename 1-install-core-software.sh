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

sudo apt-get update

#software from 'normal' repositories
sudo apt-get install -y apt-transport-https openssl software-properties-common python-software-properties git curl ca-certificates zlib1g zlib1g-dev libpcre3 libpcre3-dev build-essential libssl-dev
sudo apt-get install -y dconf-cli dconf-editor ppa-purge ffmpeg

###############################################################################################

# installation of zippers and unzippers
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller


echo "################################################################"
echo "##################    core software installed  #################"
echo "################################################################"
