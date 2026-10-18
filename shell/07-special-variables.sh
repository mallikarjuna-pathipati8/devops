#!/bin/bash
person1=$1
person2=$2
person3=$3
echo "All arguments pass to the script:$@"
echo "Number of arguments pass to the script:$#"
echo "First Variable:$1"
echo "Second Variable:$2"
echo "Fourth Variable:$4"
echo "Script name:$0"
echo "Who is running the user:$USER"
echo "Path of the script:$PWD"
echo "User home directory:$HOME"
echo "PID of the scipt:$$"

sleep &
echo "background running PID:$!"
wait $!
echo ""Line Number:$LINENO"
echo "Previous exit status:$?"
echo "Total time executed script:$SECONDS"