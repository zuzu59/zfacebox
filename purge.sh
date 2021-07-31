#!/bin/bash
#Petit script pour nettoyer tout le binz du docker-compose
#zf210731.1058

docker-compose down -v --remove-orphans
