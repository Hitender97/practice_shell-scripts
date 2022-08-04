#!/bin/bash

echo 'This program is for addition of two numbers'

printf 'enter the first number: \n'
read A

printf 'enter the second number: \n'
read B

C=`expr $A + $B`

echo 'Addition of two numbers is '${C}''