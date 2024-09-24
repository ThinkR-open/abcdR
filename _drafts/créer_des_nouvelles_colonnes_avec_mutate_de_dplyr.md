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

Le package `dplyr` est un outil puissant pour la manipulation de données en R. L'une des fonctions les plus utilisées de `dplyr` est `mutate()`, qui permet d'ajouter de nouvelles colonnes à un DataFrame ou de modifier des colonnes existantes. Dans cet article, nous allons explorer comment utiliser `mutate()` pour enrichir nos jeux de données.

## Installation et chargement de `dplyr`

Si vous n'avez pas encore installé le package `dplyr`, vous pouvez le faire en utilisant la commande suivante :

```R
install.packages("dplyr")
```

Ensuite, vous devez charger le package dans votre session R :

```R
library(dplyr)
```

## Exemple d'utilisation de `mutate()`

Imaginons que nous avons un DataFrame contenant des informations sur des employés, avec les colonnes `nom`, `salaire` et `annees_experience`. Nous voulons créer une nouvelle colonne `salaire_annuel`, qui est simplement le salaire multiplié par 12, et une colonne `prime`, qui est 10% du salaire.

Voici comment nous pourrions procéder :

### Création d'un DataFrame d'exemple

```R
# Créons un DataFrame d'exemple
employes <- data.frame(
  nom = c("Alice", "Bob", "Charlie"),
  salaire = c(3000, 4000, 5000),
  annees_experience = c(5, 10, 3)
)
```

### Utilisation de `mutate()`

Nous allons utiliser `mutate()` pour ajouter les nouvelles colonnes :

```R
# Ajouter de nouvelles colonnes avec mutate
employes <- employes %>%
  mutate(
    salaire_annuel = salaire * 12,
    prime = salaire * 0.10
  )
```

### Résultat

Après avoir exécuté le code ci-dessus, le DataFrame `employes` contiendra les nouvelles colonnes `salaire_annuel` et `prime`. Voici à quoi cela ressemble :

```R
print(employes)
```

Le résultat affichera :

```
      nom salaire annees_experience salaire_annuel  prime
1   Alice   3000                 5           36000  300.0
2     Bob   4000                10           48000  400.0
3 Charlie   5000                 3           60000  500.0
```

## Explications

- **mutate()** : Cette fonction prend en entrée un DataFrame et permet d'ajouter ou de modifier des colonnes.
- **salaire_annuel = salaire * 12** : Ici, nous créons une nouvelle colonne `salaire_annuel` qui est calculée en multipliant la colonne `salaire` par 12.
- **prime = salaire * 0.10** : De même, nous ajoutons une colonne `prime` qui représente 10% du salaire.

## Conclusion

La fonction `mutate()` de `dplyr` est très utile pour enrichir vos jeux de données avec de nouvelles informations dérivées de colonnes existantes. Grâce à sa syntaxe claire et concise, vous pouvez facilement effectuer des transformations sur vos données en R. N'hésitez pas à explorer d'autres fonctionnalités de `dplyr` pour rendre vos analyses encore plus puissantes !

