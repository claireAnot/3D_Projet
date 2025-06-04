# Projet convertiseur ARTNET -> DMX

### Réalisé par :
- CROCE Léonard
- MONNIER Nathan
- BEAUVARLET Antoine
- ANOT-DELCOURT Claire

```
Note : test_artnet_spi -> projet STM32CubeIDE avec la NUCLEO-L476RG
       project_artnet_api -> projet STM32CubeIDE avec la "fausse" STM32-G431KBT6, NON FONCTIONNEL
```

Notre projet consiste à créer un système capable de convertir des trames ARTNET en DMX, dans le but de contrôler des lumières plus facilement.
![Tableau](https://github.com/claireAnot/3D_Projet/blob/main/images/tableau_resume.jpg "Tableau résumé")

### Planning initial
![image](https://github.com/user-attachments/assets/554f196f-c450-451a-88eb-290ffd87e5c4)
[Lien pour accéder/modifier le planning](https://docs.google.com/spreadsheets/d/186soKjPCN-PK-JzUTAcS0mT16IVo6W8UJx_HTyjIL5Y/edit?usp=sharing)

### Synoptique du code
![STMarchi](https://github.com/claireAnot/3D_Projet/blob/main/images/fonctionnement_interne_STM_projet.png "STMarchi")

### Listes des composants utilisés pour le projet
|W5500|RS485|
|:-------:|:-------:|
|Permet de transmettre les trames de l'éthernet au SPI|Permet de transmettre les trames de l'UART au DMX|
|![IMG](https://github.com/claireAnot/3D_Projet/blob/main/images/W5500.png "W5500")|![IMG2](https://github.com/claireAnot/3D_Projet/blob/main/images/uart_ttl_to_rs485_two-way_converter_04.jpg "Tableau")|

### Cartes
|Composant|Référence|
|:-------:|:-------:|
|STM32G491RET6|https://eu.mouser.com/ProductDetail/STMicroelectronics/STM32G491RET6?qs=eP2BKZSCXI4QobUu7xPUDw%3D%3D&srsltid=AfmBOorBPL-STKsK2rVMfzQQ7Oz4K7U0JYCj0qxpDp0Ew72G5G8mcLyb|
|NUCLEO-G491RE|https://www.mouser.fr/ProductDetail/STMicroelectronics/NUCLEO-G491RE?qs=IS%252B4QmGtzzobNcC7Lmhp%252Bg%3D%3D|

Nucleo L476RG
> ![Carte](https://github.com/claireAnot/3D_Projet/blob/main/images/Nucleo%20L476RG.PNG "Nucleo L476RG")

## Déroulement du projet
### Software
Nous avons essayé de travailler avec la STM32-G431KBT6, qui est proche de la carte que nous voulons utiliser pour la maquette finale : la STM32-G491RET6. C'était enfaite une NUCLEO-L432KC !! La carte était dans le mauvais emballage et nous avons chacun perdu beaucoup de temps à essayer de la faire fonctionner avant de s'en rendre compte !

Nathan et Antoine : 
- Objectif : Envoyer des trames DMX sur l'UART
![image](https://github.com/user-attachments/assets/e19e2ff6-4516-412d-9c82-8e909f8d36eb)


Claire et Antoine + Léonard sur les 2 dernières séances : 
- Objectif : Recevoir des trames ARTNET sur le SPI
- Déroulement :
  - Création d'un projet utilisé avec la NUCLEO-L476RG
  - Intégration d'un driver pour utiliser le W5500 -> compilation fastidieuse mais réussie. (ioLibrary : https://docs.wiznet.io/Product/iEthernet/W5500/driver)
  - Utilisation du driver : nous avons eu la *merveilleuse* idée de nous inspirer des GitHub d'autres personnes. Nous aurions plutôt dû écrire nos propres fonctions et essayer de le faire fonctionner à notre manière pour notre carte spécifiquement -> ce que nous avons fait à la dernière séance.
  - Initialisation du W5500 : fastidieuse mais réussie après l'utilisation de nos propres fonctions
  - Réception de trames ARTNET sur le W5500 : en cours


### Hardware
Léonard :
- Apprendre à utiliser Kicad
- Créer le PCB :
  - W5500
  - Alimentation POE isolée pour alimenter la carte qu'avec le câble éthernet. L'avantage est qu'il y a qu'une connection à faire pour mettre en route le dispositif.
  - DMX isolés avec des protections ESD pour éviter d'endommager la partie hardware sensible avec de potentielles perturbations.
