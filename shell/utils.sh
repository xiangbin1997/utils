#!/bin/bash

ltrim() {
    local var=$1
    var="${var#"${var%%[![:space:]]*}"}"   # remove leading whitespace characters
    echo -n "$var"
}

rtrim() {
    local var=$1
    var="${var%"${var##*[![:space:]]}"}"   # remove trailing whitespace characters
    echo -n "$var"
}

trim() {
    local var=$1
    ltrim $var | rtrim $var
}

var="    abc    "

ltrim "$var"
rtrim "$var"
trim "$var"

