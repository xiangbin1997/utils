#!/bin/bash

g_onlyshow=0

showmenu()
{
    local dirs=$(dirs)
    local index=0
    for dir in ${dirs[@]}
    do
        echo "$index: $dir"
        let index=$index+1
    done
    
    if [ $g_onlyshow -eq 1 ];then
        return
    fi

    local offset
    echo -n "Select the dir you want to change to: "
    read  offset

    if [ $offset -gt 0 -o $offset -lt $index ];then
        echo 
        pushd "+$offset" > /dev/null
    else
        echo "wrong input"
    fi
}

main()
{
    if [ $# -eq 1 -a "X$1" == "X-s" ];then
        g_onlyshow=1
    fi

    showmenu
}

main $@


