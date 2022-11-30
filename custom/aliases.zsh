alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias vip='f() { VBoxManage guestproperty get $1 "/VirtualBox/GuestInfo/Net/0/V4/IP" };f'
alias ...="cd ../.."
alias ....="cd ../../.."
if (( $+commands[rg] )); then
    alias grep=rg
fi
if (( $+commands[tmux] )); then
    alias t='tmux new -As0'
fi
