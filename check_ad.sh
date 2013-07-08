check=`/usr/bin/id <aduser> 2>/dev/null | awk '{print substr ($1,1,3)}'`

if [ "$check" == "uid"  ]
then
echo "All looks good"
else
echo "AD binding failure"
exit 1;
fi

