# zfacebox
Petit docker pour se faire un service privé de reconnaissance faciale avec FaceBOX
zf210801.1630


## Buts
Faire de la reconnaissance de personne avec une micro caméra esp32-cam sur Home Assistant.

Pour cela, il faut un système *privé* de *deep learning**.


## Moyens
On utillise pour cela FaceBOX de MachineBOX, une sorte de boîte noire qui permet de faire de la reconnaissance faciales.


## Gestion des secrets
il faut copier le fichier secrets.sh.example en secrets.sh et mettre sa key de MachineBOX
```
cp secrets.sh.example secrets.sh
nano secrets.sh
```

Après inscription sur https://machinebox.io/account, il faut aller la chercher sur la gauche dans MachineBOX !


## Utilisation
### Démarrer le service
```
./start.sh
```
### Arrêter le service
```
./stop.sh
```
### Redémarrer le service
```
./restart.sh
```


## Face learning
A chaque démarrage ou redémarrage, avec la version gratuite de FaceBOX, il faut envoyer les photos de personnes à reconnaitre avec une simple commande curl:
```
curl -X POST -F 'file=@/config/images/zuzu1.png' http://192.168.4.148:8089/facebox/teach?name=zuzu&id=zuzu1.png
```


## Sauvegarde et restauration du deep learning
On peut sauvegarder et retaurer les données de deeep learning avec ces deux commandes:

### Saugegarde
Depuis le browser:
```
http://192.168.4.148:8089/facebox/state
```

### Restauration
Au moyen d'une requête CURL:
```
curl -X POST -F 'file=@/path/to/state.facebox' http://192.168.4.148:8089/facebox/state
```




## Sources
https://www.home-assistant.io/integrations/facebox/

https://machinebox.io/docs/facebox

https://siytek.com/home-assistant-face-recognition/

https://www.dopebuild.com/i-am-sorry-dave-i-am-unable-to-do-that/


