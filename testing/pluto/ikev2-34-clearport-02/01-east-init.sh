/testing/guestbin/swan-prep
ipsec start
../../guestbin/wait-until-pluto-started
ipsec auto --add west-east
ipsec auto --add pass-7
ipsec auto --route pass-7
echo "initdone"
