#!/bin/sh

# iptables location
IPTABLES="/sbin/iptables"

# external interface
EXT_IF="eth0";

# nat
/sbin/sysctl -w net.ipv4.ip_forward=1 > /dev/null 2>&1
$IPTABLES -t nat -A POSTROUTING -o $EXT_IF -j MASQUERADE

# unblocked ports
#$IPTABLES -A INPUT -p tcp --dport 22 -j ACCEPT
#$IPTABLES -A INPUT -p tcp --dport 80 -j ACCEPT
#$IPTABLES -A INPUT -p tcp --dport 113 -j ACCEPT
#$IPTABLES -A INPUT -p tcp --dport 443 -j ACCEPT
# vpn
#$IPTABLES -A INPUT -p udp --dport 1194 -j ACCEPT

# utorrent port, mapped to 172.16.31.2 (maze)
#$IPTABLES -A INPUT -p tcp --dport 39119 -j ACCEPT

# blizzard ports, mapped to 172.16.31.2 (maze)
#$IPTABLES -A INPUT -p tcp --dport 3724 -j ACCEPT
#$IPTABLES -A INPUT -p tcp --dport 6112 -j ACCEPT
#$IPTABLES -A INPUT -p tcp --dport 6113 -j ACCEPT
#$IPTABLES -A INPUT -p tcp --dport 6114 -j ACCEPT
#$IPTABLES -A INPUT -p tcp --dport 4000 -j ACCEPT

# tinyvnc
#$IPTABLES -A INPUT -p tcp --dport 5900 -j ACCEPT

# allow everything related to the friendly icmp protocol
$IPTABLES -A INPUT -p icmp -j ACCEPT

# allow incoming udp traffic from source port 53 on connections you initiated
$IPTABLES -A INPUT -p udp -m udp --sport 53 -m state --state ESTABLISHED -j ACCEPT

# be about a million times more liberal and allow all incoming udp traffic
#$IPTABLES -A INPUT -p udp -j ACCEPT

# established connections
$IPTABLES -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
$IPTABLES -A FORWARD -i $EXT_IF -m state --state RELATED,ESTABLISHED -j ACCEPT

# utorrent mapped port to maze
#$IPTABLES -A PREROUTING -t nat -i $EXT_IF -p tcp --dport 39119 -j DNAT --to 172.16.31.2:39119

# blizzard mapped ports to maze
#$IPTABLES -A PREROUTING -t nat -i $EXT_IF -p tcp --dport 3724 -j DNAT --to 172.16.31.2:3724
#$IPTABLES -A PREROUTING -t nat -i $EXT_IF -p tcp --dport 6112 -j DNAT --to 172.16.31.2:6112
#$IPTABLES -A PREROUTING -t nat -i $EXT_IF -p tcp --dport 6113 -j DNAT --to 172.16.31.2:6113
#$IPTABLES -A PREROUTING -t nat -i $EXT_IF -p tcp --dport 6114 -j DNAT --to 172.16.31.2:6114
#$IPTABLES -A PREROUTING -t nat -i $EXT_IF -p tcp --dport 4000 -j DNAT --to 172.16.31.2:4000

# tinyvnc
#$IPTABLES -A PREROUTING -t nat -i $EXT_IF -p tcp --dport 5900 -j DNAT --to 172.16.31.2:5900

# default deny
$IPTABLES -A INPUT -i $EXT_IF -j DROP
