
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

[[ "$vu" =~ "focal" ]] && echo "focal'"


if [[ "$vu" =~ "focal" ]]
then
     echo "focal"
     echo "starting install of Tailscale"

       curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/jammy.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
       curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/jammy.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list

sudo apt update

sudo apt-get -y install tailscale

elif [[ "$vu" =~ "jammy" ]]
then
     echo "jammy"

else
     echo "Your release is the following"
     $vu
fi


echo "################################################################"
echo "#####################  Tailscale installed  ####################"
echo "################################################################"
