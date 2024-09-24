---
title: "Utiliser tidyr::pivot_longer pour réorganiser des tableaux"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - réorganisation
    post_tag:
        - pivot_longer
        - réorganiser
---

# Utiliser `tidyr::pivot_longer` pour réorganiser des tableaux

La manipulation de données est une étape cruciale dans l'analyse de données. L'une des tâches fréquentes consiste à réorganiser un tableau de données pour qu'il soit plus facile à utiliser dans des analyses ultérieures. La fonction `pivot_longer` du package `tidyr` de R est un outil puissant qui permet de transformer des données larges en données longues.

## Qu'est-ce que `pivot_longer` ?

`pivot_longer` prend des colonnes spécifiques d'un tableau et les transforme en une seule colonne, tout en utilisant d'autres colonnes comme identifiants. Cela est particulièrement utile lorsque vous avez des colonnes qui représentent des mesures différentes mais qui concernent la même variable.

## Exemple concret

Imaginons que nous avons un tableau de données qui contient les résultats d'examens d'élèves dans différentes matières. Voici comment les données pourraient être structurées :

```r
# Données d'exemple
data <- data.frame(
  Eleve = c("Alice", "Bob", "Charlie"),
  Math = c(15, 12, 18),
  Physique = c(14, 10, 17),
  Chimie = c(16, 11, 19)
)

print(data)
```

Ce tableau affiche les notes d'élèves en trois matières : Math, Physique et Chimie. Nous souhaiterions le réorganiser pour avoir une colonne pour les matières et une autre pour les notes. Cela nous permettra de mieux visualiser les données et d'effectuer des analyses.

## Utilisation de `pivot_longer`

Pour transformer ce tableau, nous allons utiliser la fonction `pivot_longer` :

```r
library(tidyr)

data_long <- data %>%
  pivot_longer(
    cols = c(Math, Physique, Chimie),  # Colonnes à transformer
    names_to = "Matiere",                # Nouveau nom de la colonne pour les matières
    values_to = "Note"                   # Nouveau nom de la colonne pour les notes
  )

print(data_long)
```

### Explications du code

- **`library(tidyr)`** : Nous chargeons le package `tidyr` qui contient la fonction `pivot_longer`.
- **`data %>%`** : Nous utilisons le pipe (`%>%`) pour passer notre tableau de données à la fonction suivante.
- **`pivot_longer(...)`** : C'est ici que la transformation a lieu.
  - **`cols = c(Math, Physique, Chimie)`** : Nous spécifions les colonnes que nous voulons transformer en une seule colonne.
  - **`names_to = "Matiere"`** : Nous définissons le nom de la nouvelle colonne qui contiendra les noms des matières.
  - **`values_to = "Note"`** : Nous définissons le nom de la nouvelle colonne qui contiendra les notes.

## Résultat final

Après avoir exécuté le code ci-dessus, nous obtenons le tableau suivant :

```
# A tibble: 9 × 3
  Eleve   Matiere   Note
  <chr>   <chr>   <dbl>
1 Alice   Math      15
2 Alice   Physique  14
3 Alice   Chimie    16
4 Bob     Math      12
5 Bob     Physique  10
6 Bob     Chimie    11
7 Charlie Math      18
8 Charlie Physique  17
9 Charlie Chimie    19
```

Nous avons maintenant un tableau long où chaque ligne représente une note d'un élève dans une matière spécifique. Ce format est souvent préféré pour les analyses statistiques et les visualisations.

## Conclusion

La fonction `pivot_longer` de `tidyr` est un

