# #!/bin/bash

# USERID=$(id -u)
# TIMESTAMP=$(date +%F-%H-%M-%S)
# SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
# LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log # This log file is for storing the output of the file in this /tmp/$SCRIPT_NAME-$TIMESTAMP.log file

# VALIDATE(){
#    if [ $1 -ne 0 ]  # Here $1 is that we defined in the script [$?], $2 is [installing MySql]
#    then
#         echo "$2... FAILURE"
#     else
#         echo "$2... SUCCESS"
#     fi
# }

# if [ $USERID -ne 0 ]
# then
#     echo "Please run this script as a root user."
#     exit 1 # Manually exit if the error comes
# else 
#     echo "You are super user".
# fi

# dnf install mysql -y &>>$LOGFILE

# VALIDATE $? "Installing MySql" # $1 is [$?], $2 is [installing MySql]


# dnf install git -y &>>$LOGFILE

# VALIDATE $? "Installing Git"




#!/bin/bash

USER_ID=$(id -u)
#TIMESTAMP=$(date +%F-%H-%M-%S)
#SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
#LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2... Failure"
    else
        echo "$2... Success"
    fi
}



if [ $USER_ID -ne 0 ]
then
    echo "Please run this script as root user"
    exit 1
else
    echo "You are super user"
fi

dnf install mysql -y

VALIDATE $? "Installing Mysql"


dnf install git -y

VALIDATE $? "Installing Git"
