#!/bin/bash

USERID=$(id -u)

if [ $USERID -n 0 ]; then
   echo "ERROR:: please run this script with root privelege"
   exit 1 # failure is other then 0
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
   echo "ERROR:: Installing MySQL is failure"
   exit 1
else
   echo "Installing MySQL is SUCCESS"
fi
