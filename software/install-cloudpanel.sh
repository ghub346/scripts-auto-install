#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Simon Micheneau
# Website : 	https://www.simon-micheneau.fr/
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
# #
##################################################################################################################

# Version of Ubuntu.

vu=$(lsb_release -c)

echo $vu


curl -sS https://installer.cloudpanel.io/ce/v2/install.sh -o install.sh; \
echo "3c30168958264ced81ca9b58dbc55b4d28585d9066b9da085f2b130ae91c50f6 install.sh" | \
sha256sum -c && sudo DB_ENGINE=MARIADB_10.6 bash install.sh


          
#if [ -x /usr/bin/tailscale ]; then
#    echo "enabling tailscale ssh"
#    sudo tailscale up --ssh
#elif
#    echo "Check the script.  Tailscale hasn't been found in it's default path."
#fi



####
####

echo " CloudPanel has been installed."

     
echo "################################################################"
echo "####################  CloudPanel installed  ####################"
echo "################################################################"
