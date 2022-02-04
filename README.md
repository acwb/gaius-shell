# Gaius Shell

> Custom shell personnel avec collection d'outils et raccourcis divers en ligne de commande

## COMMANDES

### adl

	Téléchargement de la piste audio de la vidéo Youtube* fournie - via le script <youtube-dl>

	Pour télécharger la vidéo complète, utiliser la commande <vdl>

	Pour télécharger des vidéos en lot, les ajouter au fichier todl via la commande <todl> puis <ytdl>

### appnet

	Montre les applications en cours qui utilise la connexion internet

### apps 

	Vérification des dépendances nécessaires

### arte

	Ouvre la webapp Arte

### ascii

	Montre des symboles ascii/unicodes utiles pour copier coller (+entité html)

### autobackup

	Lance une sauvegarde rapide du dossier $PATH_BIN vers le NAS et Dropbox. Pour un backup complet, utiliser la commande <backup>

### backup
	
	Lance une sauvegarde locale/cloud des dossiers et fichiers importants et spécifiés selon l'ordinateur qui execute la commande.

	Les dossiers sont compressés dans des archives individuelles qui sont ensuite mergées dans un backup.tar.gz, uploadé sur le NAS et Dropbox.

### bashtips

	Affiche un mémo de tips pour bash

### battery

	Affiche le pourcentage de batterie de l'ordinateur si laptop

### bt 
	
	Permet d'envoyer des instrutions à transmission-deamon qui tourne sur le serveur. 
	Commandes disponibles : 

	[add] ajouter un torrent via son url
	[clean] supprimer les torrents terminés
	[limit] [unlimit] limitations de débit alternatives
	[speed] spécifier une limite de débit download
	[restart] relancer le daemon

### clean-dl

	Tri du dossier Downloads par type de fichiers et purge du dossier Downloads/incoming

### colors
	
	Voir les couleurs enregistrées en tant que $VAR

### chromium

	Lance le navigateur web Chromium

### client

	Affiche l'ordinateur client actuel et son IP locale

### cpus

	Ouvre la webapp Canal+

### debug

	Active/Désactive le mode debug [on/off]

### devices

	Liste les appareils associés à Pushbullet

### doublons

	Chercher les fichiers en doublons (check taille puis md5) dans le répertoire spécifié.

### doc

	Fait une recherche sur la documentaire ubuntu-fr.org

### dropbox

	Ouvre le shell dropbox en ligne de commande

### fbox

	Récupère des données de la Freebox et simule la télécommande de la box TV pour envoyer des instructions de reboot.

	Paramètres disponibles: key, reboot, rebootadsl, reboottv, rebootpostadsl, tvoff, tvon, infos, status, uptime, atm, attenuation, snr, fec, hec, crc, rates

### extract

	Extraction d'une archive zip, tar, bz, gz, 7z

### fbx

	Permet de rebooter une Freebox ou Box TV

### fip

	Lance la webapp media player de FIP

### fixssh

	Execution des commandes ssh-agent et ssh-add

### flac2mp3

	Conversion recursive de fichiers FLAC en MP3

### flag

	Permet de consulter et changer l'état d'un flag : flag <nom-du-flag> <etat>
	Liste des flags enregistrés avec [flags]

### fr5

	Lance la webapp France5

### frc

	Lance la webapp media player de France Culture

### fri

	Lance la webapp media player de France Inter

### frm

	Lance la webapp media player de France Musique

### gmail

	Ouvre un nouveau mail dans la webapp Gmail

### google

	Lance une recherche sur Google dans le navigateur web

### help

	Affiche de la documentations sur les commandes et les fonctions de GaiaShell

### ident

	Récupère des infos sur le terminal connecté au réseau local via son IP.
	Utilise la commande nmap -O (nécessite sudo).

### install

	Installer un paquet (raccourci pour apt-get)

### kill

	Tuer un process sans se taper les commandes ps aux | grep nomduprocessus suivi d'un kill ID.

### lan

	Liste les terminaux connectés au réseau local.
	Utiliser la commande <ident> pour avoir des infos sur une IP.

### meteo

	Récupération et affichage des dernières précisions météo

### motd

	Afficher ou modifier le Message Of The Day affiché lors du lancement du shell

### new 

	Ouvre un nouvel onglet dans le terminal Guake

### night

	Débute un timer avant extinction de l'ordinateur

### pdl

	Téléchargement des vidéos d'une playlist YouTube

### pluzz

	Ouverture de la webapp Pluzz FranceTV

### ppa

	ajoute un dépot de paquets logiciels (Personal Package Archive)
	"ppa:" facultatif devant le nom du dépot

### prompt

	Réaffiche le header suivi du prompt - fait appel à la fonction reprompt(). Même chose sur écran vierge avec la commande [clean]

### push

	Pushbullet: Envoyer un push à un appareil
	[note] [link] [file] => [wiko] [tab] [audiostation] [sirius] [chrome] [gaia]

### pushbullet

	Commande pushbullet :

	Usage: pushbullet <action> <device> <type> <data>

	Actions:
	list - List all devices and contacts in your PushBullet account. (does not require
	       additional parameters)
	push - Push data to a device or contact. (the device name can simply be
	       a unique part of the name that "list" returns)
	pushes active - List your 'active' pushes (pushes that haven't been deleted).
	delete $iden - Delete a specific push.
	delete except $number - Delete all pushes except the last $number.
	delete all - Delete all pushes.
	setup - Use OAuth to retrieve a PushBullet API key for pushbullet-bash.

	Types: 
	note
	link
	file

	Type Parameters: 
	(all parameters must be put inside quotes if more than one word)
	"note" type: 	give the title and an optional message body.
	"link" type: 	give the title of the link, an optional message and the url.
	"file" type: 	give the path to the file and an optional message body.
	Hint:  The message body can also be given via stdin, leaving the message parameter empty.

### pwd

	Génération d'un mot de passe aléatoire

### quit

	Sortir du shell Gaius

### reboot

	Exécuter un reboot immédiat ou différé de l'ordinateur

### space

	Permet d'effectuer des opérations sur des noms de fichiers par lot (un répertoire) :
	* remplacement de caractères (espace <=> tirets, etc)
	* gestion majuscule / minuscule

### screen

	Extinction de l'écran de l'ordinateur

### search

	Rechercher un fichier en local par Nom ou Expression

### shutdown

	Exécuter une extinction immédiate ou différée de l'ordinateur

### sirius

	Se connecter en SSH à un serveur local ou distant

### soundtest

	Exécuter la lecture d'un fichier audio

### space
	
	Traitement des noms de fichiers d'un répertoire (remplacement des espaces ou autre caractère, capitalisation...)

### speedtest
	
	Executer un test de vitesse de connexion

### starwars

	Regarder Star Wars : A New Hope en ascii art (telnet towel.blinkenlights.nl)

### sync

	La commande <sync> gère la synchronisation du shell entre différents ordinateurs clients. Elle permet de vérifier :
	- si des modifications ont été apportées au code depuis la dernière sauvegarde du shell 
	(=> sauvegarde : compression de l'intégralité du dossier local ~/bin et upload de l'archive sur dropbox)
	- si la dernière sauvegarde du shell est plus récente que la version locale 
	(=> synchronisation : téléchargement de la dernière sauvegarde disponible et mise-à-jour du dossier local)

### sysinfo

	Affiche des données et statistiques système

### tdl

	Ajoute une URL au fichier "to download"

### todo

	Gestion d'une todolist en ligne de commande

### todone

	Affiche de la todolist ou suppression d'une ligne

### tomp3

	Conversion récursive de fichiers audio en mp3

### transit

	Synchronisation de répertoires définis entre deux ordinateurs du réseau local

### timer

	Lance un compte à rebours avant alarme ou l'execution d'une commande
	Paramètres:  <durée>  par ex: 30s, 2m, 5h ou hh:mm:ss
	<commande>  commande à executer à la fin du compte à rebours (optionnel)

### tree

	Affiche l'arborescence des scripts (dossier bin)

### tsf
	
	Lance la webapp media player TSF Jazz

### uninstall

	Désinstaller un paquet (apt-get remove)

### update

	Execution des commandes :
	apt-get update
	apt-get upgrade
	apt-get dist-upgrade
	apt-get autoclean
	apt-get autoremove

### vdl

	Téléchargement de la vidéo mp4/mkv du lien Youtube* fourni.

	Cette commande fait appel au script <youtube-dl>
	Pour télécharger des vidéos en lot, les ajouter au fichier todl via la commande <todl> puis <ytdl>
	Pour télécharger uniquement la piste audio de la vidéo, utiliser la commande <adl>*

### vtdl

	Téléchargement des vidéos Youtube enregistré dans le fichier $PATH_TMP/todl via la commande <tdl>

	Pour télécharger une vidéo unique, utiliser la commande <vdl>

	Cette commande fait appel au script <youtube-dl> et execute la ligne :
	youtube-dl --no-playlist --ignore-errors --write-description --no-overwrites -o "/home/toto/Downloads/stream/yt-dl/%(title)s/%(title)s_%(width)sx%(height)s.%(id)s.%(ext)s" --batch-file $PATH_TMP/todl.txt

### wdl

	aspire un site web (HTTrack-like)

### wav2mp3

	Conversion récursive de fichiers audio WAV en MP3

### webapp

	Assistant de création d'une webapp Chrome/Chromium avec choix de l'icône et gestion des paramètres d'execution

### wifi

	Détection des réseaux WIFI à portée, connexion manuelle ou automatique à un réseau préféré

### wifiwatch

	Execution de wavemon, qui est un outil de surveillance pour les réseaux wifi. Celui-ci va permettre de vérifier la qualité de votre liaison, ses statistiques et ses informations,d'obtenir des informations sur votre carte réseau, de visualiser des histogrammes sur la qualité de votre liaison, de visualiser les points d'accès disponibles.

### youtube-dl

	Raccourci vers youtube-dl en ligne de commande, téléchargement de vidéos YouTube & co
