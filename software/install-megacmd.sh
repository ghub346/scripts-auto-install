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

# [[ "$vu" =~ "focal" ]] && echo "focal'"


if [[ "$vu" =~ "focal" ]]
then
     echo "focal"
     echo "Downloading binary for Focal"

     wget https://mega.nz/linux/repo/xUbuntu_20.04/amd64/megacmd-xUbuntu_20.04_amd64.deb

     dpkg -i megacmd-xUbuntu_20.04_amd64.deb
     apt --fix-broken install -y
     
elif [[ "$vu" =~ "jammy" ]]
then
     echo "jammy"
     echo "Downloading binary for Jammy"

      wget https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megacmd-xUbuntu_22.04_amd64.deb      
     dpkg -i megacmd-xUbuntu_22.04_amd64.deb
     apt --fix-broken install -y
else
     echo "Your release is the following"
     $vu
fi

     echo "Checking if MegaCMD installed."
     
          
if [ -x /usr/bin/mega-cmd ]; then
    echo "Mega-cmd has been installed."    
else
    echo "Recheck installation attempt." 
    
fi

     


echo "################################################################"
echo "#####################  MegaCMD installed    ####################"
echo "################################################################"
