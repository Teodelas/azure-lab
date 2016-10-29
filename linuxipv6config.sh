#!/bin/bash
sed -i 's/IPV6INIT=no//g' /etc/sysconfig/network-scripts/ifcfg-eth0

echo -e "\nNETWORKING_IPV6=yes" >> /etc/sysconfig/network
echo -e "\nIPV6INIT=yes" >>  /etc/sysconfig/network-scripts/ifcfg-eth0
echo -e "\nDHCPV6C=yes" >>  /etc/sysconfig/network-scripts/ifcfg-eth0
ifdown eth0 && sudo ifup eth0

yum install httpd
apachectl start