/testing/guestbin/swan-prep --46

ipsec start
../../guestbin/wait-until-pluto-started

ipsec auto --add eastnet-westnet-ikev2
ipsec whack --impair suppress-retransmits
