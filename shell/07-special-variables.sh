#!/bin/bash

echo "all aruguments passs to the scripts : $@"
echo "Number of arguments pass to the script : $#"
echo "Name of the script : $0"
echo "First Argumentt of the script :$1"
echo "Second Argument of the script: $2"
echo "Who is running the script :$USER"
echo "What the present working directory of the script:$PWD"
echo "Home directory of the USER:$HOME"
echo "PID of script:$$"

sleep 10 &
echo "backend running PID : $!"
echo "LineNumber: $LINENO"
echo "Previous Command exits status : $?"
echo "Total time of script execution: $SECONDS"