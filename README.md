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

## Prochaine fois
```
Dans w5500_spi.c, ces lignes de codes bouclent indéfiniement : le slave (W5500) ne répond pas au master (L476RG)
// wait until the data from the slave is received,
// and the RXNE flag is set
while((hspi2.Instance->SR & SPI_FLAG_RXNE) != SPI_FLAG_RXNE);
```
