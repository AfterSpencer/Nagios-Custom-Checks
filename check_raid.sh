#!/bin/bash
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
