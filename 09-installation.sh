#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Please run this script as a root user."
    exit 1 # Manually exit if the error comes
else 
    echo "You are super user".
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo "Mysql installation... FAILURE"
    exit 1 
else
    echo "Mysql Installation... SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
    echo "Installation of Git... FAILURE"
    exit 1
else
    echo "Installation of Git... SUCCESS"
fi

echo "Is script proceeding?"