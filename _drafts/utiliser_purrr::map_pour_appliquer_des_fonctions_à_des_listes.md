---
title: "Utiliser purrr::map pour appliquer des fonctions à des listes"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - listes
    post_tag:
        - purrr
        - map
---

# Utiliser purrr::map pour appliquer des fonctions à des listes en R

Le package `purrr` fait partie de la suite `tidyverse` et offre des outils puissants pour la manipulation des listes et des vecteurs. L'une des fonctions les plus couramment utilisées dans `purrr` est `map()`, qui permet d'appliquer une fonction à chaque élément d'une liste. Dans cet article, nous allons explorer comment utiliser `purrr::map` de manière concrète avec un exemple simple.

## Installation de purrr

Si vous n'avez pas encore installé le package `purrr`, vous pouvez le faire en utilisant la commande suivante :

```R
install.packages("purrr")
```

Assurez-vous également que `dplyr` et `tidyverse` sont installés, puisque `purrr` fait partie de cette suite.

## Un exemple concret

Imaginons que nous avons une liste de nombres et que nous souhaitons calculer le carré de chaque nombre. Voici comment nous pouvons le faire avec `purrr::map()`.

### Étape 1 : Créer une liste de nombres

Commençons par créer une simple liste de nombres :

```R
library(purrr)

nombres <- list(1, 2, 3, 4, 5)
```

### Étape 2 : Appliquer une fonction avec map()

Nous allons maintenant utiliser `map()` pour appliquer la fonction qui calcule le carré à chaque élément de notre liste.

```R
carres <- map(nombres, ~ .x^2)
```

### Étape 3 : Afficher les résultats

Pour afficher les résultats, nous pouvons simplement imprimer la variable `carres` :

```R
print(carres)
```

### Résultat

Si nous exécutons le code ci-dessus, nous obtiendrons :

```
[[1]]
[1] 1

[[2]]
[1] 4

[[3]]
[1] 9

[[4]]
[1] 16

[[5]]
[1] 25
```

## Explication du code

- **list(1, 2, 3, 4, 5)** : Nous créons une liste contenant les nombres de 1 à 5.
- **map(nombres, ~ .x^2)** : Nous appliquons la fonction qui élève chaque élément au carré. La syntaxe `~ .x^2` est une formule qui indique que pour chaque élément `.x` dans `nombres`, nous voulons calculer `.x` au carré.
- **print(carres)** : Nous affichons le résultat, qui est une liste contenant les carrés des nombres d'origine.

## Conclusion

`purrr::map` est un outil très utile pour appliquer des fonctions à des éléments d'une liste de manière efficace et concise. Cet exemple simple montre comment nous pouvons facilement calculer le carré de chaque nombre dans une liste. Avec `purrr`, vous pouvez également utiliser d'autres variantes comme `map_dbl()`, `map_chr()`, etc., selon le type de retour souhaité. Cela vous permet de manipuler des données de manière élégante et efficace en R.

