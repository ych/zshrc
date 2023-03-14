function TIMEZONE() {
    if [ $# -eq 1 ]
    then
        setenv TZ=$1
    else
        TZ=$1 ${@[2,-1]}
    fi
}

function JP(){ TIMEZONE Japan $@ }
function UTC(){ TIMEZONE UTC $@ }
function TW(){ TIMEZONE ROC $@ }
function ROC(){ TIMEZONE ROC $@ }
function PST(){ TIMEZONE PST8PDT $@ }
