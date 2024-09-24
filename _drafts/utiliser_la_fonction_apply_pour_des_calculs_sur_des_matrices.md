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

La fonction `apply` en R est un outil puissant qui permet d'effectuer des calculs sur les lignes ou les colonnes d'une matrice de manière efficace et concise. Elle facilite la manipulation des données, en évitant les boucles explicites qui peuvent alourdir le code.

## Syntaxe de la fonction `apply`

La syntaxe de base de la fonction `apply` est la suivante :

```R
apply(X, MARGIN, FUN, ...)
```

- `X` : la matrice ou un tableau sur lequel on souhaite appliquer une fonction.
- `MARGIN` : un entier qui spécifie si l'on veut appliquer la fonction sur les lignes (`1`) ou sur les colonnes (`2`).
- `FUN` : la fonction à appliquer.
- `...` : d'autres arguments optionnels à passer à la fonction.

## Exemple concret

Imaginons que nous avons une matrice contenant les notes d'élèves dans différentes matières. Nous souhaitons calculer la moyenne des notes pour chaque élève (ligne) ainsi que pour chaque matière (colonne).

### Création de la matrice

Commençons par créer une matrice avec des notes :

```R
# Création d'une matrice de notes
notes <- matrix(c(15, 12, 14, 
                   18, 16, 20, 
                   10, 14, 15), 
                 nrow = 3, byrow = TRUE)

# Nommage des lignes et colonnes
rownames(notes) <- c("Élève 1", "Élève 2", "Élève 3")
colnames(notes) <- c("Maths", "Physique", "Chimie")

# Affichage de la matrice
print(notes)
```

### Calcul des moyennes

Pour calculer la moyenne des notes de chaque élève, nous allons utiliser `apply` en spécifiant `MARGIN = 1` :

```R
# Calcul de la moyenne des notes par élève
moyenne_eleves <- apply(notes, 1, mean)
print(moyenne_eleves)
```

Pour calculer la moyenne des notes de chaque matière, nous allons utiliser `apply` avec `MARGIN = 2` :

```R
# Calcul de la moyenne des notes par matière
moyenne_matieres <- apply(notes, 2, mean)
print(moyenne_matieres)
```

## Résumé des résultats

Après avoir exécuté le code ci-dessus, vous obtiendrez deux vecteurs : 

- `moyenne_eleves` contenant les moyennes pour chaque élève.
- `moyenne_matieres` contenant les moyennes pour chaque matière.

### Conclusion

La fonction `apply` est extrêmement utile pour effectuer des calculs sur des matrices en R. Elle permet de simplifier le code et d'améliorer la lisibilité. Avec cet exemple, vous pouvez maintenant utiliser `apply` pour vos propres analyses de données. N'hésitez pas à explorer d'autres fonctions comme `lapply`, `sapply`, et `tapply` pour des cas d'utilisation différents.

