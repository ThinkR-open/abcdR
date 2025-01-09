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

Le package `purrr` fait partie de la suite `tidyverse` et est conçu pour faciliter la programmation fonctionnelle en R. Une des fonctions les plus utiles de `purrr` est `map()`, qui permet d'appliquer une fonction à chaque élément d'une liste ou d'un vecteur. Cela rend le code plus lisible et souvent plus efficace que les boucles traditionnelles.

## Pourquoi utiliser `map()` ?

Lorsque vous travaillez avec des listes en R, il est courant de vouloir appliquer une fonction à chaque élément de la liste. Traditionnellement, cela se fait avec une boucle `for`, mais cela peut rendre le code plus long et moins clair. `map()` simplifie ce processus en vous permettant d'écrire du code plus concis et expressif.

## Exemple concret

Imaginons que nous avons une liste de nombres et que nous souhaitons calculer le carré de chaque nombre. Voici comment nous pourrions le faire avec `map()`.

### Étape 1 : Installer et charger le package `purrr`

Si vous n'avez pas encore installé le package `purrr`, vous pouvez le faire avec la commande suivante :

```R
install.packages("purrr")
```

Ensuite, chargez le package :

```R
library(purrr)
```

### Étape 2 : Créer une liste de nombres

Créons une liste simple de nombres :

```R
nombres <- list(1, 2, 3, 4, 5)
```

### Étape 3 : Appliquer la fonction avec `map()`

Nous allons maintenant utiliser `map()` pour appliquer une fonction qui calcule le carré de chaque nombre dans notre liste :

```R
carres <- map(nombres, function(x) x^2)
```

### Étape 4 : Afficher les résultats

Pour voir les résultats, nous pouvons imprimer la liste des carrés :

```R
print(carres)
```

### Résultat attendu

Lorsque vous exécutez le code ci-dessus, vous devriez obtenir la sortie suivante :

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

## Conclusion

L'utilisation de `purrr::map()` vous permet d'appliquer facilement des fonctions à des listes en R, rendant votre code plus propre et plus lisible. Dans cet article, nous avons vu un exemple simple de calcul des carrés de nombres, mais `map()` peut être utilisé pour des opérations beaucoup plus complexes. N'hésitez pas à explorer d'autres fonctions de `purrr` pour enrichir vos compétences en programmation R !

