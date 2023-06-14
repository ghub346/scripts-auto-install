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

#software from 'normal' repositories
sudo apt-get install -y apt-transport-https openssl ca-certificates zlib1g libpcre3
sudo apt-get install -y dconf-cli dconf-editor ppa-purge ffmpeg

###############################################################################################

# installation of zippers and unzippers
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller


echo "################################################################"
echo "##################    core software installed  #################"
echo "################################################################"
