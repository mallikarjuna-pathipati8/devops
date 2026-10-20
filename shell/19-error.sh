#!/bin/bash

set -e 

user_id=$(id -u)
echo "User Id: ${user_id}"
log_folder="/var/log/shellloops"
log_file="${log_folder}/${0}.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

trap 'echo "Error at line $LINENO, command: $BASH_COMMAND"' ERR

if [ $user_id -ne 0 ]; then
    echo "Run with Sudo User"
    exit 1
else
    echo "Sudo User"
fi

mkdir -p $log_folder
echo "script started at : $(date +"%F %T")" &>> $log_file


for package in $@
 do
    dnf list installed $package
    if [ $? -ne 0 ]; then
        echo "${package} Installing"
        dnf install $package -y &>> $log_file
       
    else
        echo -e "${package} alredy installed and ${Y}skipping${N}"
    fi
done
