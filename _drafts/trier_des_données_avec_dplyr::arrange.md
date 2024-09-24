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

Le tri des données est une étape fondamentale dans l'analyse de données. Avec le package `dplyr` de R, trier vos données devient une tâche simple et intuitive grâce à la fonction `arrange()`. Cet article vous montrera comment utiliser cette fonction avec un exemple concret.

## Qu'est-ce que `dplyr::arrange` ?

La fonction `arrange()` permet de trier un data frame ou un tibble en fonction d'une ou plusieurs colonnes. Vous pouvez trier vos données par ordre croissant ou décroissant.

## Installation et chargement de dplyr

Si vous n'avez pas encore installé le package `dplyr`, vous pouvez le faire avec la commande suivante :

```R
install.packages("dplyr")
```

Ensuite, chargez le package :

```R
library(dplyr)
```

## Exemple concret

Imaginons que nous avons un data frame contenant des informations sur des étudiants, avec leurs noms, âges et notes. Voici comment nous pourrions créer ce data frame :

```R
# Création du data frame
etudiants <- data.frame(
  nom = c("Alice", "Bob", "Charlie", "David"),
  age = c(23, 21, 22, 24),
  note = c(85, 90, 78, 88)
)
```

### Tri par ordre croissant

Pour trier les étudiants par âge dans l'ordre croissant, nous utiliserons `arrange()` comme suit :

```R
# Tri par âge croissant
etudiants_trie <- etudiants %>%
  arrange(age)

print(etudiants_trie)
```

### Tri par ordre décroissant

Si vous souhaitez trier par note dans l'ordre décroissant, vous pouvez utiliser la fonction `desc()` :

```R
# Tri par note décroissant
etudiants_trie_desc <- etudiants %>%
  arrange(desc(note))

print(etudiants_trie_desc)
```

### Tri par plusieurs colonnes

Vous pouvez également trier par plusieurs colonnes. Par exemple, si vous voulez trier par âge et ensuite par note (dans l'ordre décroissant), voici comment procéder :

```R
# Tri par âge croissant et note décroissante
etudiants_trie_multi <- etudiants %>%
  arrange(age, desc(note))

print(etudiants_trie_multi)
```

## Conclusion

La fonction `arrange()` de `dplyr` est un outil puissant pour trier vos données de manière simple et efficace. Que vous souhaitiez trier par une ou plusieurs colonnes, en ordre croissant ou décroissant, `arrange()` vous permet de le faire avec une syntaxe claire et concise. N'hésitez pas à l'essayer avec vos propres jeux de données pour voir à quel point il est facile de manipuler et d'analyser vos informations.

