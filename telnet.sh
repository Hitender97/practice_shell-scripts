#!/bin/bash

telnet()
{
    echo "checking port status on "${ip}" and port "${port}""
    nc -zv ${ip} ${port}
}

ip=$1
port=$2

telnet
