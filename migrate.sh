#!/bin/bash
rm -f keyput.sh
wget http://files.soluslabs.com/solusvm/scripts/keyput.sh
chmod a+x keyput.sh
./keyput.sh $2 32128
VZID=$(vzlist -a | grep $1 | awk {'print $1'})

if ! [[ "$VZID" =~ ^[0-9]+$ ]] ; then
   exec >&2; echo "error: Not a number"; exit 1
fi

vzmigrate -v --ssh="-p 32128" $2 $VZID
