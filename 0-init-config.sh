
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


# Create wheel group.

groupadd wheel

# Create user

useradd -s /bin/bash -m -G sudo,wheel baller175

# Create wheel entry in sudoers file.
touch /etc/sudoers.d/wheelie ; echo "%wheel         ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers.d/wheelie




###############################################################################################

# installation of zippers and unzippers
#sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller


echo "################################################################"
echo "##################       Init Config           #################"
echo "################################################################"
