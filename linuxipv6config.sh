#!/bin/bash
sed -i 's/IPV6INIT=no//g' /etc/sysconfig/network-scripts/ifcfg-eth0

echo -e "\nNETWORKING_IPV6=yes" >> /etc/sysconfig/network
echo -e "\nIPV6INIT=yes" >>  /etc/sysconfig/network-scripts/ifcfg-eth0
echo -e "\nDHCPV6C=yes" >>  /etc/sysconfig/network-scripts/ifcfg-eth0
shutdown -r +2 "Rebooting to apply IPv6 changes."
