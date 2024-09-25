---
title: "Faire des calculs vectorisés avec la fonction Vectorize"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - calculs vectorisés
    post_tag:
        - Vectorize
        - calculs
---

# Faire des calculs vectorisés avec la fonction Vectorize en R

En R, le traitement vectorisé est une approche puissante qui permet d'effectuer des opérations sur des vecteurs de manière efficace et concise. Cependant, il arrive parfois que nous souhaitions appliquer une fonction qui n'est pas intrinsèquement vectorisée. Dans ce cas, la fonction `Vectorize` peut être très utile. Elle permet de transformer une fonction non vectorisée en une fonction qui peut traiter des vecteurs.

## Qu'est-ce que la vectorisation ?

La vectorisation consiste à appliquer une opération à chaque élément d'un vecteur sans avoir besoin d'utiliser des boucles explicites. Cela rend le code plus lisible et souvent plus rapide. Par exemple, si nous avons un vecteur de nombres et que nous voulons calculer le carré de chaque élément, nous pouvons le faire directement :

```R
nombres <- c(1, 2, 3, 4)
carres <- nombres^2
print(carres)  # Affiche : 1 4 9 16
```

## Utilisation de `Vectorize`

Imaginons que nous avons une fonction qui ne peut pas être appliquée directement à un vecteur. Prenons une fonction simple qui calcule la racine carrée d'un nombre, mais qui ne peut traiter qu'un seul nombre à la fois :

```R
racine_carre <- function(x) {
  return(sqrt(x))
}
```

Pour utiliser cette fonction sur un vecteur, nous pouvons utiliser `Vectorize` :

```R
# Création d'une fonction vectorisée
racine_carre_vectorisee <- Vectorize(racine_carre)

# Application de la fonction vectorisée sur un vecteur
nombres <- c(1, 4, 9, 16)
resultats <- racine_carre_vectorisee(nombres)

print(resultats)  # Affiche : 1 2 3 4
```

Dans cet exemple, `Vectorize` prend notre fonction `racine_carre` et crée une nouvelle fonction `racine_carre_vectorisee` qui peut accepter un vecteur en entrée. Lorsque nous appelons cette nouvelle fonction avec un vecteur, elle applique la fonction `racine_carre` à chaque élément du vecteur.

## Avantages de `Vectorize`

1. **Simplicité** : Évitez les boucles explicites et rendez votre code plus lisible.
2. **Performance** : Bien que `Vectorize` ne soit pas aussi performant que les fonctions déjà vectorisées, il est généralement plus rapide que l'utilisation de boucles `for`.
3. **Flexibilité** : Vous pouvez facilement adapter des fonctions existantes pour qu'elles fonctionnent avec des vecteurs.

## Conclusion

La fonction `Vectorize` est un outil précieux en R pour effectuer des calculs vectorisés. Elle vous permet de transformer des fonctions non vectorisées en fonctions qui peuvent traiter des vecteurs, rendant ainsi votre code plus efficace et plus facile à comprendre. N'hésitez pas à l'utiliser pour simplifier vos calculs et améliorer la lisibilité de votre code !

