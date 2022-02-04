#!/bin/bash

 

# Chargement des "libs" de fonctions
[[ -e "${PATH_FNC}/prompt.fn" ]] && source "${PATH_FNC}/prompt.fn" || { echo "ERREUR: include ${PATH_FNC}/prompt.fn absent !" 1>&2 ; exit 1; }
[[ -e "${PATH_FNC}/flags.fn" ]] && source "${PATH_FNC}/flags.fn" || { echo "ERREUR: include ${PATH_FNC}/flags.fn absent !" 1>&2 ; exit 1; }
[[ -e "${PATH_FNC}/msg.fn" ]] && source "${PATH_FNC}/msg.fn" || { echo "ERREUR: include ${PATH_FNC}/msg.fn absent !" 1>&2 ; exit 1; }
[[ -e "${PATH_FNC}/dev.fn" ]] && source "${PATH_FNC}/dev.fn" || { echo "ERREUR: include ${PATH_FNC}/dev.fn absent !" 1>&2 ; exit 1; }
[[ -e "${PATH_FNC}/ping.fn" ]] && source "${PATH_FNC}/ping.fn" || { echo "ERREUR: include ${PATH_FNC}/ping.fn absent !" 1>&2 ; exit 1; }
[[ -e "${PATH_FNC}/status.fn" ]] && source "${PATH_FNC}/status.fn" || { echo "ERREUR: include ${PATH_FNC}/status.fn absent !" 1>&2 ; exit 1; }
[[ -e "${PATH_FNC}/apps.fn" ]] && source "${PATH_FNC}/apps.fn" || { echo "ERREUR: include ${PATH_FNC}/apps.fn absent !" 1>&2 ; exit 1; }

#dmsg "Fonctions chargées"
echo -e "\b\b\b et des fonctions" && sleep 0.2
