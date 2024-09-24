---
title: "Renommer des colonnes avec dplyr::rename"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - colonnes
    post_tag:
        - rename
        - colonnes
---

# Renommer des colonnes avec dplyr::rename

Lorsque vous travaillez avec des jeux de données en R, il est fréquent de vouloir renommer des colonnes pour qu'elles soient plus explicites ou adaptées à votre analyse. La bibliothèque `dplyr` offre une fonction pratique pour cela : `rename()`. Cet article vous expliquera comment utiliser cette fonction avec des exemples concrets.

## Installation et chargement de dplyr

Avant de commencer, assurez-vous que le package `dplyr` est installé et chargé dans votre environnement R. Vous pouvez l'installer avec la commande suivante :

```R
install.packages("dplyr")
```

Puis, chargez-le :

```R
library(dplyr)
```

## Utilisation de dplyr::rename

La fonction `rename()` permet de modifier les noms des colonnes d'un data frame. La syntaxe de base est la suivante :

```R
rename(data, nouveau_nom = ancien_nom)
```

- `data` : votre data frame.
- `nouveau_nom` : le nom que vous souhaitez donner à la colonne.
- `ancien_nom` : le nom actuel de la colonne que vous souhaitez renommer.

### Exemple concret

Imaginons que nous avons un data frame `df` qui contient des informations sur des étudiants, avec les colonnes `nom`, `age`, et `note`. Voici à quoi il ressemble :

```R
df <- data.frame(
  nom = c("Alice", "Bob", "Charlie"),
  age = c(21, 22, 23),
  note = c(85, 90, 88)
)

print(df)
```

Cela produira la sortie suivante :

```
      nom age note
1   Alice  21  85
2     Bob  22  90
3 Charlie  23  88
```

Supposons que nous souhaitons renommer la colonne `note` en `score`. Nous utiliserons la fonction `rename()` de la manière suivante :

```R
df_renomme <- df %>%
  rename(score = note)

print(df_renomme)
```

La sortie sera :

```
      nom age score
1   Alice  21    85
2     Bob  22    90
3 Charlie  23    88
```

### Explications

Dans cet exemple, nous avons utilisé l'opérateur pipe `%>%` pour passer le data frame `df` à la fonction `rename()`. Nous avons spécifié que nous voulons que la colonne `note` soit renommée en `score`. Le résultat est un nouveau data frame `df_renomme`, qui contient la colonne avec le nouveau nom.

## Conclusion

Renommer des colonnes avec `dplyr::rename()` est une tâche simple et efficace qui peut rendre vos jeux de données plus lisibles et faciles à analyser. Grâce à cet article, vous devriez maintenant être en mesure d'utiliser cette fonction pour adapter vos data frames à vos besoins d'analyse. N'hésitez pas à explorer d'autres fonctions de `dplyr` pour manipuler vos données encore plus facilement !

