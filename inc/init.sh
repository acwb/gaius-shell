#!/bin/bash


# valeur par défaut
make_flag offline off
make_flag shell off
FBXFAIL="0"
lastcheck=$(date +%s)


gmsg Gaius -do "Vérification des clés SSH"
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock &>/dev/null
  sleep 1
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
echo -n " : "
ssh-add -l | grep "The agent has no identities" &>/dev/null && ssh-add


# check du client
client_check

# check de la connectivité
source $PATH_SCR/freebox
fbx_status

# on test l'accès au net avec un envoi de spider vers google et yahoo
testconnex -v #option -v pour afficher les messages

# monitoring de la batterie
if [ "`flag client`" == "Gaia" ] ; then
    source "$PATH_SCR/battery"
    sleep 0.2
fi

# vérification dossiers home
check_dirs

# vérification dépendances
check_pkgs -q

# vérification derniere maj / dernier backup
gmsg Gaius -l -do "Vérification de la synchronisation.."
gaius_sync  

    
# vérification des configs
gmsg Gaius -do "Initialisation du shell"
echo -e -n "." && sleep 0.1
echo -e "." && sleep 0.1

if [ "$CFGLOADED" == "1" ] ; then
    dmsg "Chargement des fichiers de configuration"
else
    gmsg Gaius -l -error "Echec du chargement de la configuration"
fi
sleep 0.2

# liste des commandes disponibles
gmsg Gaius -notice && ginclude commands/cmd --donotlist 


trap bashtrap INT
trap bashtrap EXIT

