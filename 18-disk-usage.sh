#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=6

while IFS= read -r line
do
    USAGE=$(df -hT | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(df -hT | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        echo "$FOLDER is morethan $DISK_THRESHOLD, Current Usage: $USAGE"
    fi

done <<< $DISK_USAGE