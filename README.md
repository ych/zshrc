# zshrc

My configuration of zsh

## Requirements

* [zimfw](https://github.com/zimfw/zimfw)

## Steps
- rm -rf ~/.zim
- ln -s zshrc/.zshrc ~/.zshrc
- ln -s zshrc/.zimrc ~/.zimrc

# Q&A
- Where can I put the host-specific setting?
  - general setting in specific domain
    - custom/host/`hostname -d`/
  - host-specific setting
    - custom/host/`hostname -d`/`hostname`/

