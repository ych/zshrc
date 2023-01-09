if [ -d ${HOME}/bin ]; then
    if ! ~/bin/checkpath ${HOME}/bin ; then
        export PATH="${HOME}/bin:${PATH}"
    fi
fi
