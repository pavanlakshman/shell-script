#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
echo "Script started executing at: $TIMESTAMP"

R="\e[31m"
G="\e[32m"
N="\e[0m"


VALIDATE(){
   if [ $1 -ne 0 ]
   then
        echo -e "$2... $R FAILURE $N"
    else
        echo -e "$2... $G SUCCESS $N"
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

dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "Installing Docker"