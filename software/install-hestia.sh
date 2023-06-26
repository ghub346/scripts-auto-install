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
#
##################################################################################################################

wget https://raw.githubusercontent.com/hestiacp/hestiacp/release/install/hst-install.sh

## Pre-defined snippet to perform desired installation task's.
sudo bash hst-install.sh --port '8083' --lang 'en' --email 'cyninja346@outlook.com' --apache yes --phpfpm yes --multiphp yes --vsftpd yes --proftpd no --named yes --mysql yes --mysql-classic no --postgresql no --exim yes --dovecot yes --sieve no --clamav yes --spamassassin yes --iptables yes --fail2ban yes --quota no --api yes --interactive yes --force no



echo "################################################################"
echo "######################  Hestia installed  ######################"
echo "################################################################"
