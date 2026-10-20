#!/bin/bash
user_id=$(id -u)
echo "User Id ${user_id}"
logs_folder="/var/log/shellpractice"
logs_file="${logs_folder}/${0}.log"

if [ $user_id -ne 0 ]; then
   echo "Run with Sudo"
   exit 1
else 
    echo "Sudo User"
fi
mkdir -p $logs_folder

echo "Script started at $(date +"%F %T")"  &>> $logs_file

validate ()
{
    if [ $1 -ne 0 ]; then
    echo "${2}..Failed" | tee -a $logs-file
    exit 1
    else 
    echo "${2}..Success" | tee -a $logs-file
    fi
}

dnf install nginx -y &>> $logs_file
validate $? "Nginx Installation"

dnf install mysql -y &>> logs_file 
validate $? "Mysql Installation"


