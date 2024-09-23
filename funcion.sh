#!/bin/bash

echo 'This script is to define and call a function'
echo 'In function we are using pwd command and cd operations will be performed on passed arguments'
getstates()
{
    echo $(pwd)
}

script_name=$0
script_name1=$1
script_name2=$2
echo "you are running ${script_name} which will get you the present working directory"
cd ${script_name1}
echo "you passed arg ${script_name1} dir"
cd ${script_name2}
echo "you passed arg ${script_name2} dir"
echo "therefore your cuurent dir will be"
getstates
