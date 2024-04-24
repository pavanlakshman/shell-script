#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
   if [ $1 -ne 0 ]
   then
        echo "$2... FAILURE"
    else
        echo "$2... SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script as a root user."
    exit 1 # Manually exit if the error comes
else 
    echo "You are super user".
fi

dnf install mysql -y &>>$LOGFILE

VALIDATE $? "Installing MySql"


dnf install git -y &>>$LOGFILE

VALIDATE $? "Installing Git"
