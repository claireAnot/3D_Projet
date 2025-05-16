# Projet convertiseur artnet-DMX

![Tableau](https://github.com/claireAnot/3D_Projet/blob/main/images/tableau_resume.jpg "Tableau résumé")

[Lien pour accéder/modifier le planning](https://docs.google.com/spreadsheets/d/186soKjPCN-PK-JzUTAcS0mT16IVo6W8UJx_HTyjIL5Y/edit?usp=sharing)

## Synoptique du code

![STMarchi](https://github.com/claireAnot/3D_Projet/blob/main/images/fonctionnement_interne_STM_projet.png "STMarchi")

## Listes des composants utiliser pour le projet

|W5500|UART-RS485|STM32G431KBT6|
|:---:|:--------:|:-----------:|
|![IMG](https://github.com/claireAnot/3D_Projet/blob/main/images/W5500.png "W5500")|![IMG2](https://github.com/claireAnot/3D_Projet/blob/main/images/uart_ttl_to_rs485_two-way_converter_04.jpg "Tableau")|![IMG3](https://github.com/claireAnot/3D_Projet/blob/main/images/stm32G431.jpg "STM")|

## Carte STM32
|Composant|Référence|
|:-------:|:-------:|
|STM32G491RET6 | https://eu.mouser.com/ProductDetail/STMicroelectronics/STM32G491RET6?qs=eP2BKZSCXI4QobUu7xPUDw%3D%3D&srsltid=AfmBOorBPL-STKsK2rVMfzQQ7Oz4K7U0JYCj0qxpDp0Ew72G5G8mcLyb|
|NUCLEO-G491RE | https://www.mouser.fr/ProductDetail/STMicroelectronics/NUCLEO-G491RE?qs=IS%252B4QmGtzzobNcC7Lmhp%252Bg%3D%3D|

## Carte Nucleo L476RG
![Carte](https://github.com/claireAnot/3D_Projet/blob/main/images/Nucleo%20L476RG.PNG "Nucleo L476RG")

## Participants
- MONNIER Nathan
- CROCE Léonard
- ANOT-DELCOURT Claire
- BEAUVARLET Antoine

## Claire
```
J'ai galéré à compiler le driver permettant d'utiliser le W5500. Mais ça y est.

J'essaie de faire fonctionner le W5500.
De base, j'essayais à partir de repos Github et de codes d'examples.
J'ai trouvé un autre driver presque similaire. Les comparer et voir si j'intègre le nouveau à la place de l'ancien. (dans Downloads/iolibrary_v102)
Actuellement, je lis les datasheet sur Wiznet (cf. favoris)
Je travaille dans test_artnet_spi, donc avec une STM32-L476RGTx.
Dans project_artnet_api, c'était la tentative avec la STM32-G431, qui est finalement une NUCLEO-L432KC !!!!!
```
