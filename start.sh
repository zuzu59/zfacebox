#!/bin/bash
#Petit script pour démarrer tout le binz
#zf210731.1058

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

# gestion des secrets
source secrets.sh

docker-compose up -d
docker-compose logs

