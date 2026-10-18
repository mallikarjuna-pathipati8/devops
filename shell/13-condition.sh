#!/bin/bash
#Algorithm
#Get the user id
#Check sudo user if yes install nginx package
# if no , exit the process

user_id=(id -u)
if [ $user_id -ne 0 ]; then
   echo "Run with sudo access"
   exit 1
fi
npm install nginx -y