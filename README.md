# Compte Rendu Entrainement stumper
## Table of Contents
1. [Stumper Script](#stumper-script)
2. [Val Script](#val-script)
3. [Magic Numbers](#magic-numbers)
4. [Check de pointeurs](#check-de-pointeurs)
### Stumper Script
Script permettant de copier un dossier template de projet en C. Voici le contenu de ce dossier :

 - Une lib propre (return des write checked) sans malloc ou banned functions
 - Un main opérationel
 - Des unit tests sur votre lib

## Val Script
Scirpt permettant de lancer une commande valgrind complète. Si cette commande n'affiche aucune erreur, alors votre gestion de mémoire est propre.

ATTENTION : Vous devez comprendre cette commande pour potentiellement l'expliquer en review.
## Magic Numbers
Les magic numbers sont des nombres qui sont écrit en brut dans votre code, généralement utilisé pour les retours de fonctions. Exemple :

```c
int function(char *str)
{
    if (my_printf("%s\n", str) == -1)
        return 84;
    return 0;
}
```

Il faut faire dans votre .h :

```c
    #define OK 0
    #define KO 84
    #define ERROR (-1)
```

function.c :

```c
    if (my_printf("%s\n", str) == ERROR)
        return KO;
    return OK;
```

## Check de pointeurs
Checkez toujours vos pointeurs en début de fonction !! Le faire si c'est possible dans les fonctions static.

Checkez aussi tout argv.

