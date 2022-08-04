#!/bin/bash
# Hello! will not be displayed cause the global variable is defined after the first function call.
#if verbose variable is available first and hello! is called second then the code will print both hello! and how are you.

Hello()
{
    #using a local variable which is only accessible to this function.
    local MESSAGE="${@}"
    #calling global variable
    if [[ "${VERBOSE}" = 'true' ]]
    then
    echo "${MESSAGE}"
    fi
}

Hello 'Hello!'
#global variable
VERBOSE='true'
Hello 'how are you?'