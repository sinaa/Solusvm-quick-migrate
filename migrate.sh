#!/bin/bash
rm -f keyput.sh
wget http://files.soluslabs.com/solusvm/scripts/keyput.sh
chmod a+x keyput.sh
# ENTER YOUR TARGET SERVER SSH PORT HERE (if it is different from 22)
SSHPORT=22
./keyput.sh $2 $SSHPORT
VZID=$(vzlist -a | grep $1 | awk {'print $1'})

if ! [[ "$VZID" =~ ^[0-9]+$ ]] ; then
   exec >&2; echo "error: Not a number"; exit 1
fi

vzmigrate -v --ssh="-p $SSHPORT" $2 $VZID
