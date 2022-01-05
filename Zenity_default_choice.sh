#!/bin/bash
## IMPORTANT > Ne pas lancer ce script directement, la post-installation se lance avec le script nommé "PostInstall_Ubuntu-20.04LTS_FocalFossa.sh"

CHK_REP=$(zenity --entry --title="$BGN_TITLE" --text "$BGN_TEXT" --entry-text="$BGN_DEF" "$BGN_UNCHECKED" "$BGN_CHECKED")
if [ $? -ne 0 ] ; then
	exit
fi

#Zenity
GUI=$(zenity --list --checklist --height 850 --width 1400 \
	--title="$MSG_ZEN_TITLE" --text="$MSG_ZEN_TEXT" \
	--column="$MSG_ZEN_CHECK" --column="$MSG_ZEN_ACTION" --column="$MSG_ZEN_DESCRIPTION" \
	$(chkDef "TRUE") "$CA_PARTNER" "$CD_PARTNER" \
	$(chkDef "TRUE") "$CA_UPGRADE" "$CD_UPGRADE" \
	$(chkDef "TRUE") "$CA_FRENCH" "$CD_FRENCH" \
	$(chkDef "TRUE") "$CA_GNOMESUPPLEMENT" "$CD_GNOMESUPPLEMENT" \
	$(chkDef "TRUE") "$CA_PACKUTILE" "$CD_PACKUTILE" \
	$(chkDef "TRUE") "$CA_PACKCODEC" "$CD_PACKCODEC" \
	FALSE "$SCT_BROWSER" "===========================================================" \
    	$(chkDef "TRUE") "$CA_CHROMIUM" "$CD_CHROMIUM" \
    	$(chkDef "TRUE") "$CA_CHROME" "$CD_CHROME" \
	FALSE "$SCT_SESSION" "===========================================================" \
	FALSE "$SCT_INTERNET" "===========================================================" \
	$(chkDef "TRUE") "$CA_DISCORD" "$CD_DISCORD" \
	$(chkDef "TRUE") "$CA_THUNDERBIRD" "$CD_THUNDERBIRD" \
	$(chkDef "TRUE") "$CA_ZOOM" "$CD_ZOOM" \
	FALSE "$SCT_DOWNLOAD" "===========================================================" \
	$(chkDef "FALSE") "$CA_NEXTCLOUD" "$CD_NEXTCLOUD" \
	$(chkDef "TRUE") "$CA_YTDLND" "$CD_YTDLND" \
	FALSE "$SCT_CONTROLEDISTANCE" "===========================================================" \
	$(chkDef "TRUE") "$CA_FILEZILLA" "$CD_FILEZILLA" \
	FALSE "$SCT_OFFICE" "===========================================================" \
	$(chkDef "TRUE") "$CA_CHERRYTREE" "$CD_CHERRYTREE" \
	$(chkDef "TRUE") "$CA_DRAWIO" "$CD_DRAWIO" \
	$(chkDef "TRUE") "$CA_FRDIC" "$CD_FRDIC" \
	$(chkDef "TRUE") "$CA_FBREADER" "$CD_FBREADER" \
	$(chkDef "TRUE") "$CA_JOPLIN" "$CD_JOPLIN" \
	$(chkDef "TRUE") "$CA_LIBREOFFICEDEPOT" "$CD_LIBREOFFICEDEPOT" \
	$(chkDef "TRUE") "$CA_LIBREOFFICESUP" "$CD_LIBREOFFICESUP" \
	$(chkDef "TRUE") "$CA_MASTERPDFEDITOR" "$CD_MASTERPDFEDITOR" \
	$(chkDef "TRUE") "$CA_MCOMIX" "$CD_MCOMIX" \
	$(chkDef "TRUE") "$CA_NOTESUP" "$CD_NOTESUP" \
	$(chkDef "TRUE") "$CA_PDFMOD" "$CD_PDFMOD" \
	$(chkDef "TRUE") "$CA_PDFSAM" "$CD_PDFSAM" \
	$(chkDef "TRUE") "$CA_PDFSHUFFLER" "$CD_PDFSHUFFLER" \
	$(chkDef "TRUE") "$CA_POLICEMST" "$CD_POLICEMST" \
	FALSE "$SCT_LECTUREMULTIMEDIA" "===========================================================" \
	$(chkDef "TRUE") "$CA_VLCSTABLE" "$CD_VLCSTABLE" \
    	FALSE "$SCT_GRAPHISMEMODELISATION" "===========================================================" \
	$(chkDef "TRUE") "$CA_GIMP" "$CD_GIMP" \
	$(chkDef "TRUE") "$CA_INKSCAPE" "$CD_INKSCAPE" \
	FALSE "$SCT_MONTAGEVIDEO" "===========================================================" \
	FALSE "$SCT_TRAITEMENTAUDIO" "===========================================================" \
	FALSE "$SCT_EDUSCIENCE" "===========================================================" \
	FALSE "$SCT_VIRTUALISATION_EMULATION" "===========================================================" \
	$(chkDef "TRUE") "$CA_DOCKER" "$CD_DOCKER" \
	FALSE "$SCT_UTILITAIRES_GRAPHIQUE" "===========================================================" \
    	$(chkDef "TRUE") "$CA_GNOME_DISK" "$CD_GNOME_DISK" \
    	$(chkDef "TRUE") "$CA_GPARTED" "$CD_GPARTED" \
    	$(chkDef "TRUE") "$CA_GSHUTDOWN" "$CD_GSHUTDOWN" \
    	$(chkDef "TRUE") "$CA_GSYSLOG" "$CD_GSYSLOG" \
    	$(chkDef "TRUE") "$CA_GSYSMON" "$CD_GSYSMON" \
    	$(chkDef "TRUE") "$CA_MELD" "$CD_MELD" \
    	$(chkDef "TRUE") "$CA_ARCHIVAGE" "$CD_ARCHIVAGE" \
	$(chkDef "TRUE") "$CA_RECHERCHE" "$CD_RECHERCHE" \
    	$(chkDef "TRUE") "$CA_SYNAPTIC" "$CD_SYNAPTIC" \
    	$(chkDef "TRUE") "$CA_TILIX" "$CD_TILIX" \
	FALSE "$SCT_UTILITAIRES_CLI" "===========================================================" \
	$(chkDef "TRUE") "$CA_GIT" "$CD_GIT" \
	$(chkDef "TRUE") "$CA_GITFLOW" "$CD_GITFLOW" \
	$(chkDef "TRUE") "$CA_HTOP" "$CD_HTOP" \
	FALSE "$SCT_RESEAUSECURITE" "===========================================================" \
	FALSE "$SCT_GAMING" "===========================================================" \
	FALSE "$SCT_DEV" "===========================================================" \
	$(chkDef "TRUE") "$CA_ECLIPSE" "$CD_ECLIPSE" \
	$(chkDef "TRUE") "$CA_JAVAOPENJDK8" "$CD_JAVAOPENJDK8" \
	$(chkDef "TRUE") "$CA_VSCODE" "$CD_VSCODE" \
	$(chkDef "TRUE") "$CA_NODES" "$CD_NODES" \
	$(chkDef "TRUE") "$CA_NPM" "$CD_NPM" \
	FALSE "$SCT_OPTIMISATION" "===========================================================" \
	$(chkDef "TRUE") "$CA_APPORTOFF" "$CD_APPORTOFF" \
	$(chkDef "TRUE") "$CA_FOLDERCOLOR" "$CD_FOLDERCOLOR" \
	$(chkDef "TRUE") "$CA_GS_MINIMISATIONFENETRE" "$CD_GS_MINIMISATIONFENETRE" \
	$(chkDef "TRUE") "$CA_LIVEWALLPAPER" "$CD_LIVEWALLPAPER" \
	$(chkDef "TRUE") "$CA_PACKEXTENSION" "$CD_PACKEXTENSION" \
	$(chkDef "TRUE") "$CA_DASHTODOCK" "$CD_DASHTODOCK" \
	$(chkDef "TRUE") "$CA_PACKICON" "$CD_PACKICON" \
	$(chkDef "TRUE") "$CA_PACKTHEME" "$CD_PACKTHEME" \
	$(chkDef "TRUE") "$CA_OPTIMIS_SWAP" "$CD_OPTIMIS_SWAP" \
	$(chkDef "TRUE") "$CA_SNAPREMPLACEMENT" "$CD_SNAPREMPLACEMENT" \
	$(chkDef "TRUE") "$CA_NAUTILUS_EXTRA" "$CD_NAUTILUS_EXTRA" \
	$(chkDef "TRUE") "$CA_SYSFIC" "$CD_SYSFIC" \
	$(chkDef "FALSE") "$CA_TLP" "$CD_TLP" \
	FALSE "$SCT_END" "===========================================================" \
	$(chkDef "TRUE") "$CA_RESTRICT_EXTRA" "$CD_RESTRICT_EXTRA" \
	$(chkDef "TRUE") "$CA_AUTOREMOVE" "$CD_AUTOREMOVE" \
	$(chkDef "TRUE") "$CA_RES_DEP" "$CD_RES_DEP" \
	--separator='| ');
