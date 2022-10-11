# trigger OE; wait on OE to install %pass due to east not running ipsec
# should show no tunnels and a bare shunt
../../guestbin/ping-once.sh --forget -I 192.1.3.209 192.1.2.23
../../guestbin/wait-for.sh --match oe-failing -- ipsec shuntstatus
ipsec trafficstatus
# verify xfrm policy got added for %pass
../../guestbin/ipsec-look.sh
echo "waiting on east to start ipsec and OE initiate to us"
