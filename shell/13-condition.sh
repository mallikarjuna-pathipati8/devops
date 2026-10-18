#!/bin/bash
#Algorithm
#Get the user id
#Check sudo user if yes install nginx package
# if no , exit the process

user_id=$(id -u)
echo "$user_id"
if [ "$user_id" -ne 0 ]; then
    echo "Run with sudo access"
    exit 1
fi
echo "Proceeding"
dnf install nginx334 -y
if [ $? -ne 0 ]; then
    echo "Nginx installation failed"
    exit 1
else
    echo "Nginx installation success"
fi
dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "MySQL installation failed"
    exit 1
    else̥
    echo "MySQL installation success"̥
fi
