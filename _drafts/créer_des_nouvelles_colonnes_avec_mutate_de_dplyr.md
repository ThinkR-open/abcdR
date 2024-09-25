---
title: "Créer des nouvelles colonnes avec mutate de dplyr"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - colonnes
    post_tag:
        - mutate
        - colonnes
---

# Créer des nouvelles colonnes avec `mutate` de `dplyr`

Le package `dplyr` est un outil puissant pour la manipulation de données en R. L'une de ses fonctions les plus utiles est `mutate()`, qui permet de créer de nouvelles colonnes dans un data frame. Dans cet article, nous allons explorer comment utiliser `mutate()` pour ajouter des colonnes dérivées de colonnes existantes.

## Installation et chargement de `dplyr`

Avant de commencer, assurez-vous que le package `dplyr` est installé et chargé. Vous pouvez l'installer avec la commande suivante si ce n'est pas déjà fait :

```R
install.packages("dplyr")
```

Ensuite, chargez le package :

```R
library(dplyr)
```

## Exemple concret

Imaginons que nous avons un data frame contenant des informations sur des étudiants, y compris leur nom, leur note en mathématiques et leur note en sciences. Nous voulons ajouter une nouvelle colonne qui calcule la moyenne des notes de chaque étudiant.

Voici un exemple de data frame :

```R
# Création d'un data frame d'exemple
etudiants <- data.frame(
  nom = c("Alice", "Bob", "Charlie"),
  maths = c(85, 90, 78),
  sciences = c(88, 92, 80)
)

# Affichage du data frame
print(etudiants)
```

Ce qui donne :

```
      nom maths sciences
1   Alice    85       88
2     Bob    90       92
3 Charlie    78       80
```

### Utilisation de `mutate()`

Pour ajouter une nouvelle colonne qui représente la moyenne des notes, nous allons utiliser la fonction `mutate()`. Voici comment procéder :

```R
# Ajout d'une colonne 'moyenne' avec mutate
etudiants <- etudiants %>%
  mutate(moyenne = (maths + sciences) / 2)

# Affichage du data frame mis à jour
print(etudiants)
```

Après l'exécution de ce code, le data frame `etudiants` ressemblera à ceci :

```
      nom maths sciences moyenne
1   Alice    85       88   86.50
2     Bob    90       92   91.00
3 Charlie    78       80   79.00
```

## Explications

- **`mutate()`** : Cette fonction permet de créer de nouvelles colonnes ou de modifier des colonnes existantes dans un data frame.
- **`%>%`** : C'est l'opérateur pipe qui permet de passer le résultat d'une opération à la suivante, rendant le code plus lisible.
- **`(maths + sciences) / 2`** : C'est l'expression qui calcule la moyenne des notes en mathématiques et en sciences.

## Conclusion

La fonction `mutate()` de `dplyr` est un outil essentiel pour la manipulation de données en R. Elle permet d'ajouter facilement des colonnes dérivées de calculs sur d'autres colonnes. Dans cet article, nous avons vu un exemple simple d'ajout d'une colonne de moyenne, mais les possibilités sont infinies. N'hésitez pas à explorer davantage les fonctionnalités de `dplyr` pour enrichir vos analyses de données !

