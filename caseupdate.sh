#!/bin/bash

echo "We are updating the system"
echo "you are logged in as $LOGNAME"
sleep 1

#if loop to check userid is 0 or not
B=$UID                                                                      
case ${B} in
0)
    echo "As you are logged in with root privilege, this may be risky if you are not aware of this system"
;;
*) 
    echo "kindly login as root to proceed further"
    exit
;;
esac

    printf "press c to continue: "
    read var
#if loop to get the input
case ${var} in
c)
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
;;
*)
    exit 
;;
esac

    printf "if this is ok! press y to continue: "
    read input
case ${input} in
y)
    dnf upgrade -y
;;
*)
    echo "you have cancelled the process hence exiting"
    exit
;;
esac