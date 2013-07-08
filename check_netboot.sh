#!/bin/bash

status=`/usr/sbin/serveradmin status netboot | /usr/bin/awk '{print $3}'`
if [ $status == '"RUNNING"' ]
then
echo Netboot is $status 
else
echo Netboot is $status 
exit 1;
fi

