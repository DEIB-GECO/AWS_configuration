#!/bin/bash

echo "Check that we are on master node"
if [ `grep 'isMaster' /mnt/var/lib/info/instance.json | awk -F ':' '{print $2}' | awk -F ',' '{print $1}'` = 'false' ]; then
	echo "This is not the master node, exiting."
	exit 0
fi

echo "Downloading startup scripts"
wget https://raw.githubusercontent.com/DEIB-GECO/AWS_configuration/master/EMR/startup.sh

echo "Staring startup script"
source ./startup.sh