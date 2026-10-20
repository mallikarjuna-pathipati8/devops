#!/bin/bash
user_id=$(id -u)
echo "User Id: ${user_id}"
log_folder="/var/log/shellloops"
log_file="${log_folder}/${0}.log"

if [ $user_id -ne 0 ]; then
    echo "Run with Sudo User"
    exit 1
else
    echo "Sudo User"
fi

mkdir -p $log_folder
echo "script started at : $(date +"%F %T")" &>> $log_file

validate() {
    if [ $1 -ne 0 ]; then
        echo "${2}..Failed" | tee -a $log_file
        exit 1
    else
        echo "${2}..Success" | tee -a $log_file
    fi
}

for package in $@
 do
    dnf list installed $package &>> $log_file
    if [ $? -ne 0 ]; then
        echo "${package} Installing "
        dnf install $package -y &>> $log_file
        validate $? "${package} installation"
    else
        echo "${package} alredy installed ,Skipping"
    fi
done
echo "script ended at : $(date +"%F %T")" &>> $log_file
