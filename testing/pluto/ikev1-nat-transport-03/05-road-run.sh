ipsec auto --up road-east-7
# port 2 does NOT go over ipsec, IPsec traffic should remain 0
echo test | nc 192.1.2.23 2
ipsec trafficstatus
# port 7 goes over ipsec, traffic counters should be non-zero
echo test | nc 192.1.2.23 7
ipsec trafficstatus
echo done
