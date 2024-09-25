---
title: "Sélectionner des colonnes avec select de dplyr"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - colonnes
    post_tag:
        - select
        - colonnes
---

# Sélectionner des colonnes avec `select` de `dplyr`

Le package `dplyr` est l'un des outils les plus puissants et populaires pour la manipulation de données en R. L'une de ses fonctions les plus utilisées est `select()`, qui permet de choisir des colonnes spécifiques d'un tableau de données (data frame). Cet article vous expliquera comment utiliser `select()` avec des exemples concrets.

## Installation et chargement de `dplyr`

Avant de commencer, assurez-vous que le package `dplyr` est installé et chargé dans votre session R. Vous pouvez le faire avec les commandes suivantes :

```R
install.packages("dplyr")  # Installer dplyr si ce n'est pas déjà fait
library(dplyr)             # Charger le package
```

## Utilisation de `select()`

La fonction `select()` vous permet de choisir une ou plusieurs colonnes d'un data frame. Voici la syntaxe de base :

```R
select(data, column1, column2, ...)
```

- `data` : le data frame à partir duquel vous souhaitez sélectionner des colonnes.
- `column1, column2, ...` : les noms des colonnes que vous souhaitez conserver.

### Exemple concret

Imaginons que nous avons un data frame nommé `df` contenant des informations sur des étudiants :

```R
# Création d'un exemple de data frame
df <- data.frame(
  nom = c("Alice", "Bob", "Charlie"),
  age = c(20, 21, 22),
  note = c(15, 12, 18),
  ville = c("Paris", "Lyon", "Marseille")
)

# Affichage du data frame
print(df)
```

Ce qui donne :

```
      nom age note      ville
1   Alice  20  15      Paris
2     Bob  21  12       Lyon
3 Charlie  22  18 Marseille
```

### Sélectionner des colonnes

Supposons que nous ne souhaitons garder que les colonnes `nom` et `note`. Nous pouvons utiliser `select()` comme suit :

```R
# Sélectionner les colonnes 'nom' et 'note'
df_selection <- select(df, nom, note)

# Affichage du nouveau data frame
print(df_selection)
```

Le résultat sera :

```
      nom note
1   Alice  15
2     Bob  12
3 Charlie  18
```

### Sélectionner avec des fonctions

`select()` permet également d'utiliser des fonctions pour sélectionner des colonnes. Par exemple, vous pouvez utiliser `starts_with()`, `ends_with()`, ou `contains()` pour sélectionner des colonnes selon des critères spécifiques.

Voici un exemple utilisant `starts_with()` pour sélectionner les colonnes qui commencent par la lettre `n` :

```R
# Sélectionner les colonnes qui commencent par 'n'
df_selection_starts_with_n <- select(df, starts_with("n"))

# Affichage du nouveau data frame
print(df_selection_starts_with_n)
```

Le résultat sera :

```
      nom note
1   Alice  15
2     Bob  12
3 Charlie  18
```

## Conclusion

La fonction `select()` de `dplyr` est un outil puissant pour manipuler vos données en R. Elle vous permet de choisir facilement les colonnes qui vous intéressent, que ce soit en spécifiant les noms des colonnes ou en utilisant des fonctions pour des sélections plus dynamiques. N'hésitez pas à explorer davantage les fonctionnalités de `dplyr` pour améliorer votre analyse de données !

