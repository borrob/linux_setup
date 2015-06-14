#! /bin/bash

cp iptables.rules /etc/iptables.rules
iptables-restore < /etc/iptables.rules

echo "#! /bin/bash" >> /etc/network/if-pre-up.d/iptables
echo "iptables-restore < /etc/iptables.rules" >> /etc/network/if-pre-up.d/iptables
chmod +x /etc/network/if-pre-up.d/iptables
