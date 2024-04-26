#!/bin/bash

#set -e

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Please run this script as a root user."
    exit 1 # Manually exit if the error comes
else 
    echo "You are super user".
fi

dnf install myfssql -y

dnf install git -y


echo "Is script proceeding?"