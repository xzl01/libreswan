/testing/guestbin/swan-prep
ipsec start
../../guestbin/wait-until-pluto-started
ipsec auto --add westnet-eastnet-subnets
ipsec status | grep westnet-eastnet
echo "initdone"
