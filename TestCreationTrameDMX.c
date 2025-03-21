#include <stdio.h>
#include <stdlib.h>

#define DMX_CHANNELS 512

int main() {
    // Déclaration et allocation de mémoire pour la trame DMX
    unsigned char dmxFrame[DMX_CHANNELS];

    // Initialisation de la trame DMX (exemple : tous les canaux à 0)
    for (int i = 0; i < DMX_CHANNELS; i++) {
        dmxFrame[i] = 0;
    }

    // Exemple de modification de quelques canaux
    dmxFrame[0] = 255;   // Canal 1 à 255 (intensité maximale)
    dmxFrame[1] = 128;   // Canal 2 à 128 (intensité moyenne)
    dmxFrame[2] = 64;    // Canal 3 à 64 (intensité plus faible)
    dmxFrame[511] = 255; // Dernier canal à 255

    // Affichage de quelques valeurs de la trame (pour vérification)
    printf("Canal 1 : %d\n", dmxFrame[0]);
    printf("Canal 2 : %d\n", dmxFrame[1]);
    printf("Canal 3 : %d\n", dmxFrame[2]);
    printf("Canal 512 : %d\n", dmxFrame[511]);

    // ... (Votre code pour envoyer la trame DMX sur le port série) ...

    return 0;
}