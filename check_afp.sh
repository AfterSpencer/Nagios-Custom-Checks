#!/bin/bash

status=`/usr/sbin/serveradmin status  afp | /usr/bin/awk '{print $3}'`
if [ $status == '"RUNNING"' ]
then
echo AFP is $status 
else
echo AFP is $status 
exit 1;
fi

