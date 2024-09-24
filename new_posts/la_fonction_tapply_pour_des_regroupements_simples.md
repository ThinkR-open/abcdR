---
title: "La fonction tapply pour des regroupements simples"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - base indispensable
    post_tag:
        - tapply
        - regroupement
---

# La fonction tapply en R pour des regroupements simples

La fonction `tapply` en R est un outil puissant et pratique pour effectuer des opérations de regroupement sur des vecteurs. Elle permet d'appliquer une fonction à des sous-ensembles de données, selon un ou plusieurs facteurs de regroupement. Cette fonctionnalité est particulièrement utile pour explorer et analyser des données en fonction de catégories.

## Syntaxe de tapply

La syntaxe de `tapply` est la suivante :

```R
tapply(X, INDEX, FUN = NULL, ..., simplify = TRUE)
```

- `X` : le vecteur sur lequel nous voulons appliquer la fonction.
- `INDEX` : un ou plusieurs facteurs qui définissent les groupes.
- `FUN` : la fonction à appliquer (par exemple, `mean`, `sum`, etc.).
- `...` : d'autres arguments à passer à la fonction.
- `simplify` : un booléen qui indique si le résultat doit être simplifié ou non.

## Exemple concret

Imaginons que nous avons un jeu de données qui contient les revenus de différents individus ainsi que leur sexe. Nous voulons calculer le revenu moyen par sexe.

Voici un exemple de code :

```R
# Création d'un vecteur de revenus
revenus <- c(25000, 30000, 45000, 50000, 60000, 70000)

# Création d'un vecteur de sexe correspondant
sexe <- c("F", "F", "H", "H", "F", "H")

# Utilisation de tapply pour calculer le revenu moyen par sexe
revenu_moyen_par_sexe <- tapply(revenus, sexe, mean)

# Affichage des résultats
print(revenu_moyen_par_sexe)
```

### Explication du code

1. **Création des vecteurs** : Nous avons d'abord créé un vecteur `revenus` contenant les revenus des individus et un vecteur `sexe` qui indique le sexe de chaque individu.

2. **Application de tapply** : Nous avons ensuite utilisé `tapply` pour calculer le revenu moyen par sexe. Dans cet exemple, `revenus` est le vecteur sur lequel nous appliquons la fonction, `sexe` est le facteur de regroupement, et `mean` est la fonction que nous appliquons pour obtenir la moyenne.

3. **Affichage des résultats** : Enfin, nous affichons le résultat, qui nous donne le revenu moyen pour chaque sexe.

## Résultat attendu

Lorsque vous exécutez le code ci-dessus, vous obtiendrez un résultat similaire à ceci :

```
       F        H 
46666.67 56666.67 
```

Cela signifie que le revenu moyen des femmes (F) est d'environ 46666,67 et celui des hommes (H) d'environ 56666,67.

## Conclusion

La fonction `tapply` est un outil très utile pour effectuer des analyses de regroupement simples en R. Elle permet de synthétiser les données en fonction de catégories, facilitant ainsi l'exploration et la compréhension des données. Que ce soit pour calculer des moyennes, des sommes ou d'autres statistiques, `tapply` est une fonction incontournable à connaître pour tout utilisateur de R.

