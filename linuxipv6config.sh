!/bin/bash
sed -i 's/IPV6INIT=no//g' /etc/sysconfig/network-scripts/ifcfg-eth0
echo -e "\nNETWORKING_IPV6=yes" >> /etc/sysconfig/network
echo -e "\nIPV6INIT=yes" >>  /etc/sysconfig/network-scripts/ifcfg-eth0
echo -e "\nDHCPV6C=yes" >>  /etc/sysconfig/network-scripts/ifcfg-eth0
log "Installing software"
yum -y install httpd
yum -y install php php-mysql php-devel php-gd php-pecl-memcache php-pspell php-snmp php-xmlrpc php-xml
log "Installing phpinfo()"
curl http://96.119.3.36/index.php.txt > /var/www/html/index.php
service httpd start
systemctl enable httpd.service
log "Rebooting system"
shutdown -r +2 "Rebooting to apply IPv6 changes."
