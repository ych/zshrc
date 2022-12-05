if (( $+commands[npm] )); then
    if [ -e $(npm root)/@hyperupcall/autoenv/activate.sh ]; then
        source $(npm root)/@hyperupcall/autoenv/activate.sh
    elif [ -e $(npm root -g)/@hyperupcall/autoenv/activate.sh ]; then
        source $(npm root -g)/@hyperupcall/autoenv/activate.sh
    fi
fi
