# zfacebox
Petit docker pour tester la reconnaissance faciale avec FaceBOX
zf210731.1058


## Buts
Faire de la reconnaissance de personne sur une photo


## Moyens
On utillise pour cela FaceBOX de MachineBOX, une sorte de boîte noire dans le Cloud


## Gestion des secrets
il faut copier le fichier secrets.sh.example en secrets.sh et mettre sa key de MachineBOX
```
cp secrets.sh.example secrets.sh
nano secrets.sh
```

Après inscription sur https://machinebox.io/account, il faut aller la chercher sur la gauche dans MachineBOX !


## Utilisation
Simplement faire:
```
./start.sh
```



## Sources
https://www.home-assistant.io/integrations/facebox/

https://machinebox.io/docs/facebox

https://www.dopebuild.com/i-am-sorry-dave-i-am-unable-to-do-that/

https://siytek.com/home-assistant-face-recognition/

