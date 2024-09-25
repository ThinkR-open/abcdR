---
title: "Comment utiliser sapply pour appliquer une fonction à une liste"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - liste
    post_tag:
        - sapply
        - liste
---

# Utiliser sapply pour appliquer une fonction à une liste en R

La fonction `sapply` en R est un outil puissant qui permet d'appliquer une fonction à chaque élément d'une liste ou d'un vecteur. Elle renvoie un vecteur ou une matrice, selon le résultat de la fonction appliquée. Dans cet article, nous allons explorer comment utiliser `sapply` avec un exemple concret.

## Qu'est-ce que sapply ?

`sapply` est une fonction qui simplifie l'application d'une fonction à chaque élément d'une liste ou d'un vecteur. Elle est particulièrement utile lorsque vous souhaitez obtenir un résultat simplifié, comme un vecteur, à partir d'une liste.

### Syntaxe de sapply

La syntaxe de `sapply` est la suivante :

```R
sapply(X, FUN, ...)
```

- `X` : la liste ou le vecteur sur lequel vous souhaitez appliquer la fonction.
- `FUN` : la fonction que vous souhaitez appliquer.
- `...` : d'autres arguments à passer à la fonction.

## Exemple concret

Imaginons que nous avons une liste de nombres et que nous souhaitons calculer le carré de chaque nombre. Voici comment nous pouvons le faire avec `sapply`.

### Étape 1 : Créer une liste

Commençons par créer une liste de nombres :

```R
nombres <- list(a = 1, b = 2, c = 3, d = 4)
```

### Étape 2 : Définir la fonction

Nous allons définir une fonction qui calcule le carré d'un nombre :

```R
carre <- function(x) {
  return(x^2)
}
```

### Étape 3 : Appliquer la fonction avec sapply

Maintenant, nous allons utiliser `sapply` pour appliquer la fonction `carre` à chaque élément de la liste `nombres` :

```R
resultat <- sapply(nombres, carre)
```

### Étape 4 : Afficher le résultat

Enfin, affichons le résultat :

```R
print(resultat)
```

### Résultat attendu

Lorsque vous exécutez le code ci-dessus, vous devriez obtenir le résultat suivant :

```
  a   b   c   d 
  1   4   9  16 
```

Chaque élément de la liste a été élevé au carré, et le résultat a été simplifié en un vecteur.

## Conclusion

`sapply` est une fonction très utile pour appliquer des opérations à chaque élément d'une liste ou d'un vecteur en R. Dans cet article, nous avons vu comment l'utiliser pour calculer le carré de chaque nombre dans une liste. N'hésitez pas à expérimenter avec d'autres fonctions et types de données pour découvrir toute la puissance de `sapply` !

