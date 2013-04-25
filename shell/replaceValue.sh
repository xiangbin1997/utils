#!/bin/bash

HANDLE_FILE="tt"
KEYWORD="abcd"
DST_VALUE="HAHA"
replaceValue()
{
    sed  -i  "s/\($KEYWORD\)[ \t]*:=.*/\1 := $DST_VALUE/" "${HANDLE_FILE}"    
}

replaceValue




