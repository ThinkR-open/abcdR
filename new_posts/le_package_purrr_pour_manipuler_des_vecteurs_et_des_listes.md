---
title: "Le package purrr"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - listes
    post_tag:
        - listes
        - programmation fonctionnelle
---

# Introduction au package purrr en R

Le package `purrr` fait partie de la suite tidyverse et est conçu pour faciliter la programmation fonctionnelle en R. Il permet de travailler avec des listes et des vecteurs de manière plus efficace et expressive. Grâce à `purrr`, vous pouvez appliquer des fonctions à des éléments de listes ou de vecteurs sans avoir à écrire des boucles explicites.

## Installation et chargement du package

Avant de commencer, assurez-vous d'avoir installé le package `purrr`. Vous pouvez l'installer avec la commande suivante :

```r
install.packages("purrr")
```

Ensuite, chargez le package :

```r
library(purrr)
```

## Utilisation de map

La fonction principale de `purrr` est `map()`, qui permet d'appliquer une fonction à chaque élément d'une liste ou d'un vecteur. Voici un exemple simple :

### Exemple : Calculer le carré de chaque nombre

Imaginons que nous avons un vecteur de nombres et que nous souhaitons calculer le carré de chaque nombre. Voici comment nous pouvons le faire avec `purrr` :

```r
# Création d'un vecteur de nombres
nombres <- c(1, 2, 3, 4, 5)

# Utilisation de map pour calculer le carré de chaque nombre
carres <- map(nombres, function(x) x^2)

# Affichage des résultats
carres
```

### Explication du code

1. **Création d'un vecteur** : Nous créons un vecteur `nombres` contenant les valeurs de 1 à 5.
2. **Application de la fonction** : Nous utilisons `map()` pour appliquer une fonction anonyme qui calcule le carré (`x^2`) à chaque élément du vecteur `nombres`.
3. **Résultat** : Le résultat est une liste contenant les carrés des nombres. Si vous souhaitez obtenir un vecteur plutôt qu'une liste, vous pouvez utiliser `map_dbl()` à la place de `map()`.

### Exemple avec map_dbl

Voici comment utiliser `map_dbl()` pour obtenir un vecteur :

```r
# Utilisation de map_dbl pour obtenir un vecteur
carres_vecteur <- map_dbl(nombres, function(x) x^2)

# Affichage des résultats
carres_vecteur
```

## Conclusion

Le package `purrr` est un outil puissant pour simplifier la manipulation de listes et de vecteurs en R. En utilisant des fonctions comme `map()`, vous pouvez écrire un code plus propre et plus lisible. N'hésitez pas à explorer d'autres fonctions de `purrr`, telles que `map_df()`, `map_chr()`, et `map_lgl()`, qui vous permettent de retourner des data frames, des chaînes de caractères, et des valeurs logiques respectivement.

