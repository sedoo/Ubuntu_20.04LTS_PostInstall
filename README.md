# README 

## Objectif ##

Ce script sert à installer des logiciels sur une base Ubuntu > 20.04LTS avec un très large choix de paquets.

Il peut être utilisé :

 - à la réception d'un nouveau poste de développement pour installer tous les produits.
 - ultérieurement, pour n'installer qu'un nombre restreint de produits 


Ce script est basé sur le projet https://github.com/simbd/Ubuntu_20.04LTS_PostInstall/ dont il n'affiche qu'un certain nombre de logiciels.

## Compatibilité ##

Le script est destiné principalement à la version de base d'Ubuntu (Gnome) pour la version 20.04LTS et pour les versions suivantes 


- Ce script est fait pour "Bash" (shell par défaut sous Ubuntu) mais pas pour les autres Shell donc si vous l'avez modifié manuellement sur votre Ubuntu pour mettre, par exemple, "Zsh" à la place, le script ne fonctionnera pas correctement (certaines fonctions non-compatibles).


## Lancement du script

En ligne de commande, le script peut être lancé de la manière suivante :

> wget https://github.com/sedoo/Ubuntu_SEDOO_PostInstall/archive/master.zip &&
> unzip master.zip && 
> cd Ubuntu_SEDOO_PostInstall-master/ && chmod +x Ubuntu_SEDOO_PostInstall.sh &&
> ./Ubuntu_SEDOO_PostInstall.sh

## Futures évolutions

Les évolutions suivantes sont prévues: 

- Amélioration de l'IHM
- Création de la clé SSH du USER
- Installation Z 
- Installation de Zsh si possible (cf. compatibilité)
- Installation Mongo
- Extensions Gnome
- Configuration par défaut de certains outils (ex: raccourcis Zsh, raccourci Gnome, config Git...)


***Bonne installation ! ;-)***
