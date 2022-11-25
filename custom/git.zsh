alias gdump='git cat-file -p'
alias gtype='git cat-file -t'
alias gd='git diff --name-only | fzf --color=light --reverse -m --ansi --preview "git diff --color=always -- {-1}" --bind=ctrl-j:preview-down --bind=ctrl-k:preview-up --bind=ctrl-h:preview-page-up --bind=ctrl-l:preview-page-down --bind=enter:preview-down --bind=space:preview-page-down --preview-window=right:75%:wrap'
alias gds='git diff --staged --name-only | fzf --color=light --reverse -m --ansi --preview "git diff --staged --color=always -- {-1}" --bind=ctrl-j:preview-down --bind=ctrl-k:preview-up --bind=ctrl-h:preview-page-up --bind=ctrl-l:preview-page-down --bind=enter:preview-down --bind=space:preview-page-down --preview-window=right:75%:wrap'
