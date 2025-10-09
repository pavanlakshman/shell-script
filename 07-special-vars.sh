#!/bin/bash

echo "Print all variables: $@"
echo "No of variables passed: $#"
echo "Print script name: $0"
echo "Print current working directory: $PWD"
echo "Print Home directory: $HOME"
echo "Which user is running this script: $USER"
echo "Hostname: $HOSTNAME"
echo "Process ID of the current shell script: $$"
sleep 60 &
echo "Process ID of the last background command: $!"
echo "Checks the exit status of the last command: $?"
