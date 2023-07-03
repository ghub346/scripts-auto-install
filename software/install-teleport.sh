### Install Teleport, and configure system to bind services to IPv4.


# apt install curl -y
# curl https://goteleport.com/static/install.sh | bash -s 13.1.5

# teleport configure --acme --acme-email=cyninja346@outlook.com --cluster-name=tele.amaze-it.link | sudo tee /etc/teleport.yaml > /dev/null

# echo to /etc/sysctl.conf 

#net.ipv6.conf.all.disable_ipv6=1
#net.ipv6.conf.default.disable_ipv6=1
#net.ipv6.conf.lo.disable_ipv6=1
