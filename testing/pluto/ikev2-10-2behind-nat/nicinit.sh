iptables -t nat -F
iptables -F
# NAT
iptables -t nat -p udp -A POSTROUTING --source 192.1.3.0/24  -o eth1 -j MASQUERADE --to-port 40000-60000
# make sure that we never acidentially let ESP or unencrypted through.
iptables -I FORWARD 1 --proto 50 -j DROP
iptables -I FORWARD 2 --destination 192.0.2.0/24 -j DROP
iptables -I FORWARD 3 --source 192.0.2.0/24 -j DROP
# route
iptables -I INPUT 1 --destination 192.0.2.0/24 -j DROP
# Display the table, so we know it is correct.
iptables -t nat -L -n
iptables -L -n
: ==== end ====
