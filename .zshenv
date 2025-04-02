if [ -d ${HOME}/bin ]; then
    if ! ~/bin/checkpath ${HOME}/bin ; then
        export PATH="${HOME}/bin:${PATH}"
    fi
fi

if [ -e /u/yuchunh/.nix-profile/etc/profile.d/nix.sh ]; then . /u/yuchunh/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
