#!/bin/bash

# re-include car s'ouvre avec une commande bash dans un nouvel onglet
source /home/toto/bin/inc/fonctions.cfg
source /home/toto/bin/inc/config.cfg

timer=""
runafter=""


function countdown {

    local OLD_IFS="${IFS}"
    IFS=":"
    local ARR=( $1 )
    local SECONDS=$((  (ARR[0] * 60 * 60) + (ARR[1] * 60) + ARR[2]  ))
    local START=$(date +%s)
    local END=$((START + SECONDS))
    local CUR=$START

    while [[ $CUR -lt $END ]]
    do
            CUR=$(date +%s)
            LEFT=$((END-CUR))
            
            printf "\r%02d:%02d:%02d" \
                    $((LEFT/3600)) $(( (LEFT/60)%60)) $((LEFT%60))

            if [ "$LEFT" == 11 ] ; then
                amixer -D pulse sset Master 100% &>/dev/null
                amsg countdown
            fi

            sleep 1
    done
    IFS="${OLD_IFS}"

}

if [ -z "$1" ] ; then
    echo -n "Temps avant alarme (HH:MM:SS) : "
    read timermin
    echo -n "Commande (alarme si non-renseignée) : "
    read runafter
else
    timer=$1
    runafter="$2 $3 $4 $5"
fi


clear
guake --rename-tab=Timer
guake -s 0

if [ -n "$runafter" ] ; then
    gmsg Gaia -l -do "Lancement d'un compte à rebours $timer avant l'execution de : $2"
else
    gmsg Gaia -l -do "Lancement d'un compte à rebours $timer avant alarme"
fi

echo
countdown $timer
echo

gmsg Gaia -l -ok "Compte à rebours de $timer écoulé !"

if [ -n "$runafter" ] ; then

    gmsg Gaia -l -do "Lancement de la commande : $runafter"
    echo
    runcmd $runafter
    echo
    prompt

else

    gmsg Gaia -l -do "Lancement de l'alarme en infinite loop"
    gmsg Gaia -l -n -error "ALARME ! $desc"

    while /bin/true; do
            amixer -D pulse sset Mastedr 5%+ &>/dev/null
            amsg alarm
            echo -e -n "\r"
            gmsg Gaia -notice "Appuyer sur une touche pour arrêter l'alarme"
            read -t 7 -s -n 1 -p " " key 
            if [ "$?" -eq "0" ] ; then
                break
            fi
    done 
    amixer -D pulse sset Master 80% &>/dev/null
    echo
    
fi