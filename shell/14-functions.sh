#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Run with Sudo User"
    exit 1
else
    echo "Sudo User"
fi

validate() {
        if [ $1 -ne 0 ]; then
        echo "${2}.. Failed"
        exit 1
    else
        echo "${2}.. Success"
    fi
}
dnf install nginx -y
validate $? "Nginx Installation"

dnf install mysqlwew -y
validate $? "MySql Installation"