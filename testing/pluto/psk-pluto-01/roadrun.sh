ipsec auto --up road-eastnet-psk
../../guestbin/ping-once.sh --up 192.0.2.254
ipsec whack --trafficstatus
echo done.
