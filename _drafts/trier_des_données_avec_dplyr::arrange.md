---
title: "Trier des données avec dplyr::arrange"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - tri
    post_tag:
        - arrange
        - trier
---

# Trier des données avec dplyr::arrange

Le tri des données est une opération courante en analyse de données. Avec le package `dplyr` en R, il est très facile de trier des données à l'aide de la fonction `arrange()`. Cet article vous montrera comment utiliser cette fonction avec un exemple concret.

## Qu'est-ce que dplyr::arrange ?

La fonction `arrange()` de `dplyr` permet de trier un tableau de données (data frame) en fonction d'une ou plusieurs colonnes. Vous pouvez trier les données par ordre croissant ou décroissant.

## Installation et chargement de dplyr

Si vous n'avez pas encore installé le package `dplyr`, vous pouvez le faire avec la commande suivante :

```R
install.packages("dplyr")
```

Ensuite, vous devez charger le package dans votre session R :

```R
library(dplyr)
```

## Exemple concret

Imaginons que nous avons un tableau de données contenant des informations sur des étudiants, y compris leur nom et leur note. Voici comment nous pouvons créer ce tableau :

```R
# Création d'un data frame d'exemple
etudiants <- data.frame(
  nom = c("Alice", "Bob", "Charlie", "David"),
  note = c(85, 92, 78, 88)
)

# Affichage du data frame
print(etudiants)
```

Ce qui donnera :

```
      nom note
1   Alice   85
2     Bob   92
3 Charlie   78
4   David   88
```

### Trier par ordre croissant

Pour trier les étudiants par leur note en ordre croissant, nous utilisons `arrange()` comme suit :

```R
# Tri des étudiants par note en ordre croissant
etudiants_trie_croissant <- etudiants %>%
  arrange(note)

# Affichage du résultat
print(etudiants_trie_croissant)
```

Le résultat sera :

```
      nom note
1 Charlie   78
2   Alice   85
3   David   88
4     Bob   92
```

### Trier par ordre décroissant

Si nous voulons trier les étudiants par note en ordre décroissant, nous pouvons utiliser la fonction `desc()` à l'intérieur de `arrange()` :

```R
# Tri des étudiants par note en ordre décroissant
etudiants_trie_decroissant <- etudiants %>%
  arrange(desc(note))

# Affichage du résultat
print(etudiants_trie_decroissant)
```

Le résultat sera :

```
      nom note
1     Bob   92
2   David   88
3   Alice   85
4 Charlie   78
```

## Conclusion

La fonction `arrange()` de `dplyr` est un outil puissant et simple pour trier vos données. Que vous souhaitiez trier par ordre croissant ou décroissant, `arrange()` vous permet de le faire facilement. N'hésitez pas à l'utiliser dans vos propres analyses de données pour mieux organiser vos résultats !

