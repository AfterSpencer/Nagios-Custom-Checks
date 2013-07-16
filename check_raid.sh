#!/bin/bash

# This command must be run as root on 10.5 and below, be sure to sudo the command in the NRPE config file.

STATUS=`diskutil checkRAID 2>&1 | grep -i Status: | awk '{print $NF}'`


if [ "$STATUS" == "" ]
then
echo "NO RAID DETECTED"
exit 0

else
if [ "$STATUS" == "Online" ] || [ "$STATUS" == "Online
Online" ]
then
echo "RAID OK"
exit 0

else

echo "RAID DEGRADED"
exit 1
fi
fi
