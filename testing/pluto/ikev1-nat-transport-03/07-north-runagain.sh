# confirm tunnel of first client still works after second client established
ipsec trafficstatus
# port 7 goes over ipsec, traffic counters should increase
echo test | nc 192.1.2.23 7
ipsec trafficstatus
