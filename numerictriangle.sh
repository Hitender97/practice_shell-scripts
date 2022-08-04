#!/bin/bash

A=0

while [[ $A -lt 10 ]]
do
    B=$A
    while [[ $B -ge 0 ]]
    do
        echo -n "$B"
        sleep 1
        B=$(($B-1))
    done
    echo
    A=$((A+1))
done  