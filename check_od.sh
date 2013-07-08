check=`/usr/bin/id diradmin 2>/dev/null | awk '{print substr ($1,1,3)}'`

if [ "$check" == "uid"  ]
        then
echo "All looks good"
        else
echo "OD binding failure"
        exit 1;
fi

