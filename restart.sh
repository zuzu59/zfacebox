#!/bin/bash
#Petit script pour redémarrer tout le binz
#zf210801.1551

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

# gestion des secrets
source secrets.sh

./stop.sh
sleep 2
./start.sh
