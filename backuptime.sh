#!/bin/bash

BAK=$(defaults read /var/db/.TimeMachine.Results BACKUP_COMPLETED_DATE | awk '{print $1}')
CURR=$(date +"%Y-%m-%d %r" | awk '{print $1}')

#give the dates to awk
echo $BAK $CURR | awk '{

#parse
year1=substr($1,1,4);
day1=substr($1,6,2);
month1=substr($1,9,2);

year2=substr($2,1,4);
day2=substr($2,6,2);
month2=substr($2,9,2);

#get seconds
secs1=((year1 - 1970)*365.25+(month1*30.5)+day1)*24*60*60;
secs2=((year2 - 1970)*365.25+(month2*30.5)+day2)*24*60*60;

days=(((secs2 - secs1) / 60 / 60 / 24));
print days " days since last backup";
}'

