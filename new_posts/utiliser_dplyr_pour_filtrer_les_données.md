---
title: "Utiliser dplyr pour filtrer les données"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - filtrage
    post_tag:
        - dplyr
        - filtrer
---

# Utiliser dplyr pour filtrer les données en R

Le package `dplyr` est l'un des outils les plus puissants et populaires pour la manipulation de données en R. L'une de ses principales fonctionnalités est la capacité à filtrer des données, ce qui permet de sélectionner des sous-ensembles de données en fonction de conditions spécifiques. Dans cet article, nous allons explorer comment utiliser `dplyr` pour filtrer des données de manière simple et efficace.

## Installation et chargement de dplyr

Avant de commencer, assurez-vous que le package `dplyr` est installé et chargé dans votre environnement R. Vous pouvez l'installer avec la commande suivante :

```R
install.packages("dplyr")
```

Ensuite, chargez le package :

```R
library(dplyr)
```

## Exemple concret : Filtrer un jeu de données

Pour illustrer l'utilisation de `dplyr`, prenons un exemple avec le jeu de données intégré `mtcars`, qui contient des informations sur différentes voitures. Supposons que nous souhaitons filtrer les voitures qui ont une consommation de carburant (mesurée en miles par gallon, mpg) supérieure à 20.

### Étape 1 : Visualiser les données

D'abord, jetons un œil aux premières lignes du jeu de données `mtcars` :

```R
head(mtcars)
```

### Étape 2 : Filtrer les données

Nous allons utiliser la fonction `filter()` de `dplyr` pour sélectionner les voitures avec un mpg supérieur à 20. Voici comment faire :

```R
voitures_economiques <- mtcars %>%
  filter(mpg > 20)
```

Dans cet exemple :
- `mtcars` est notre jeu de données d'origine.
- `%>%` est l'opérateur pipe qui permet de passer le résultat de la commande précédente à la suivante.
- `filter(mpg > 20)` sélectionne uniquement les lignes où la colonne `mpg` est supérieure à 20.

### Étape 3 : Afficher les résultats

Pour voir les voitures qui répondent à notre critère, nous pouvons afficher le nouveau jeu de données :

```R
print(voitures_economiques)
```

## Conclusion

Filtrer des données avec `dplyr` est une tâche simple et intuitive. Grâce à la fonction `filter()`, vous pouvez facilement extraire des sous-ensembles de données basés sur des conditions spécifiques. Dans cet article, nous avons vu comment filtrer les voitures du jeu de données `mtcars` pour ne garder que celles ayant une consommation de carburant supérieure à 20 mpg.

N'hésitez pas à explorer d'autres fonctions de `dplyr` pour enrichir votre analyse de données en R !

