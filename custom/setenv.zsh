function setenv(){
    if [ $# -eq 2 ]
    then
        export "$1"="$2"
    else
        export $1
    fi
}

function unsetenv(){
    unset "$1"
}
