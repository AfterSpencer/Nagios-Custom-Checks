#!/bin/bash
SERVICE='DeployStudioServer'

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
    echo "$SERVICE service running."
else
    echo "$SERVICE is not running."
	exit 1
fi

