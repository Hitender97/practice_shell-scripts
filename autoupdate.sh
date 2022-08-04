#!/bin/bash

echo "We are updating the system"
echo "you are logged in as $LOGNAME"
sleep 1

#if loop to check userid is 0 or not
B=$UID                                                                      
if [[ ${B} -eq 0 ]]
then
    echo "As you are logged in with root privilege, this may be risky if you are not aware of this system"
else
    echo "kindly login as root to proceed further"
    exit
fi

    printf "press c to continue: "
    read var
#if loop to get the input
if [[ $var = c ]]                                                         
then
    echo "current date is"
    date
    sleep 1
    echo "checking disk space"
    df -Th
    sleep 1
    echo "kernel version and architecture"
    uname -r
    uname -m
    sleep 1
    echo "thanks for keeping patience we are checking the new updates"
    dnf check-update
else
    exit
fi

    printf "if this is ok! press y to continue: "
    read input
if [[ $input = y ]]
then
    dnf upgrade -y
else
    echo "you have cancelled the process hence exiting"
    exit
fi