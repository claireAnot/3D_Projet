# Projet convertiseur ARTNET -> DMX

### Réalisé par :
- CROCE Léonard
- MONNIER Nathan
- BEAUVARLET Antoine
- ANOT-DELCOURT Claire

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
- Envoyer des trames DMX sur l'UART
![image](https://github.com/user-attachments/assets/e19e2ff6-4516-412d-9c82-8e909f8d36eb)


Claire et Antoine : 
- Recevoir des trames ARTNET sur le SPI
- Difficultés rencontrées
  - Intégration d'un driver pour utiliser le W5500
  - Initialisation du W5500
  - Initialisation de l'adresse IP

Bref, l'utilisation du driver n'a pas aboutie et nous n'avons pas eu le temps de mettre en place une autre solution pour communiquer avec le W5500.


### Hardware
Léonard :
- Apprendre à utiliser Kicad
- Créer le PCB :
  - W5500
  - Alimentation POE isolée pour alimenter la carte qu'avec le câble éthernet. L'avantage est qu'il y a qu'une connection à faire pour mettre en route le dispositif.
  - DMX isolés avec des protections ESD pour éviter d'endommager la partie hardware sensible avec de potentielles perturbations.
