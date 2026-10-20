#!/bin/bash
    user_id=$(id -u)
    echo "User Id: ${user_id}"
    log_folder="/var/log/shell"
    log_file="${log_folder}/${0}.log"

    if [ $user_id -ne 0 ]; then
    echo "Run with Sudo User"
    exit 1
    else 
echo "Sudo User"
    fi
    mkdir -p $log_folder

    validate (){
    if [ $1 -ne 0 ]; then
    echo "${2}..Failed" | tee -a $log_file
    exit 1

    else
echo "${2}..Success" | tee -a $log_file
    fi
    }

    for package in $@
    do
    echo "Installging :${package}"
    dnf install $package -y &>> $log_file
    validate $? "${package} installation"
    done

