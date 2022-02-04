#!/bin/bash

loaded=0
clear
echo
sleep 0.1
echo -e -n "\e[35m\e[1m Gaius → \e[0m Chargement" && sleep 0.1
echo -e -n "..." | pv -qL 10
guake --rename-tab=Gaia 