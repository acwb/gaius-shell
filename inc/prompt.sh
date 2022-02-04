#!/bin/bash


loaded=1

history -r


while [ 1 ]; do 
    prompt_check
    cd $PATH_USER
    echo
    
    set -o emacs
    
    source $PATH_INC/binds.sh
  

    read -e -p $'\e[34m\e[1m ★ \e[0m\e[37m ' reps 
    echo -e -n "$RESET"
    
    history -s "$reps"
    
    runcmd $reps 
    continue
done
#history -w

exit 0


