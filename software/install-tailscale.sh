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
     echo "Adding repo's and key's for Tailscale"

     curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
     curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list

elif [[ "$vu" =~ "jammy" ]]
then
     echo "jammy"
     echo "Adding repo's and key's for Tailscale"

     curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/jammy.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
     curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/jammy.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list

else
     echo "Your release is the following"
     $vu
fi

     echo "Checking if Tailscale installed."


installtailscale() {

    echo "installing Tailscale" 
    sudo apt update
    sudo apt-get -y install tailscale
    sudo tailscale up

}


     


SERVICE="apt-get"
if pgrep -x "$SERVICE" >/dev/null
then
    echo "$SERVICE is running"
    echo "will try again in 10 seconds."
    sleep 10
    installtailscale
elif [ -x /usr/bin/tailscale ]; then
    echo "enabling tailscale ssh"
    sudo tailscale up --ssh
    # mail
else
    installtailscale
    sleep 15
    echo -n "Tailscale service has been installed."
    echo -n "Activating Tailscale ssh service."
    sudo tailscale up --ssh

#    echo "Check the script"
fi
     

          
#if [ -x /usr/bin/tailscale ]; then
#    echo "enabling tailscale ssh"
#    sudo tailscale up --ssh
#elif
#    echo "Check the script.  Tailscale hasn't been found in it's default path."
#fi



####


     
echo "################################################################"
echo "#####################  Tailscale installed  ####################"
echo "################################################################"
