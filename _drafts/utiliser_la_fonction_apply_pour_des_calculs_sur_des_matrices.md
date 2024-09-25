---
title: "Utiliser la fonction apply pour des calculs sur des matrices"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - matrices
    post_tag:
        - apply
        - matrices
---

# Utiliser la fonction `apply` pour des calculs sur des matrices en R

La fonction `apply` en R est un outil puissant qui permet d'effectuer des opérations sur les lignes ou les colonnes d'une matrice. Elle est particulièrement utile lorsque vous souhaitez appliquer une fonction à chaque ligne ou colonne sans avoir à écrire des boucles explicites. Dans cet article, nous allons explorer comment utiliser `apply` pour effectuer des calculs simples sur une matrice.

## Syntaxe de la fonction `apply`

La syntaxe de la fonction `apply` est la suivante :

```R
apply(X, MARGIN, FUN, ...)
```

- `X` : la matrice ou un tableau sur lequel vous souhaitez appliquer la fonction.
- `MARGIN` : un entier qui indique si vous souhaitez appliquer la fonction sur les lignes (`1`) ou sur les colonnes (`2`).
- `FUN` : la fonction que vous souhaitez appliquer.
- `...` : d'autres arguments à passer à la fonction.

## Exemple concret

Imaginons que nous avons une matrice de données représentant les notes d'étudiants dans différentes matières. Nous allons calculer la moyenne des notes pour chaque étudiant (ligne) et pour chaque matière (colonne).

### Création de la matrice

Commençons par créer une matrice de notes :

```R
# Création d'une matrice de notes
notes <- matrix(c(15, 12, 14, 18, 16, 10, 20, 15, 17), nrow = 3, byrow = TRUE)
colnames(notes) <- c("Math", "Physique", "Chimie")
rownames(notes) <- c("Étudiant 1", "Étudiant 2", "Étudiant 3")

# Affichage de la matrice
print(notes)
```

### Calcul de la moyenne par étudiant

Pour calculer la moyenne des notes de chaque étudiant, nous allons utiliser `apply` avec `MARGIN = 1` :

```R
# Calcul de la moyenne par étudiant
moyennes_etudiants <- apply(notes, 1, mean)

# Affichage des moyennes
print(moyennes_etudiants)
```

### Calcul de la moyenne par matière

De la même manière, pour calculer la moyenne des notes par matière, nous utiliserons `MARGIN = 2` :

```R
# Calcul de la moyenne par matière
moyennes_matieres <- apply(notes, 2, mean)

# Affichage des moyennes
print(moyennes_matieres)
```

## Résumé

Dans cet article, nous avons vu comment utiliser la fonction `apply` pour effectuer des calculs sur une matrice en R. Nous avons créé une matrice de notes et calculé les moyennes des notes pour chaque étudiant et pour chaque matière. La fonction `apply` simplifie considérablement le code en évitant l'utilisation de boucles explicites, ce qui rend le code plus lisible et plus efficace.

N'hésitez pas à expérimenter avec d'autres fonctions et d'autres types de calculs en utilisant `apply` pour explorer davantage ses capacités !

