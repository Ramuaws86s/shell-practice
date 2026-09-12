#!/bin/bash

USERID=$(id -u)

if [ $USERID -n 0 ]; then
   echo "ERROR:: please run this script with root privelege"
   exit 1 # failure is other then 0
fi

VALIDATE(){ # functions receive inputs throught args just like shell script args
    if [ $? -ne 0 ]; then
       echo "ERROR:: Installing MySQL is failure"
       exit 1
    else
       echo "Installing MySQL is SUCCESS"
    fi
}

dnf install mysql -y
VALIDATE $? "MySQL"

dnf install nginx -y
VALIDATE $? "Nginx"

dnf install python3 -y
VALIDATE $? "python3"

 
