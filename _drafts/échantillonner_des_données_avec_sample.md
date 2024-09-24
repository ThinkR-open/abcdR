---
title: "Échantillonner des données avec sample"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - échantillonnage
    post_tag:
        - sample
        - échantillonnage
---

# Échantillonner des données avec la fonction sample en R

L'échantillonnage est une technique fondamentale en statistique qui permet de sélectionner un sous-ensemble d'individus d'une population pour effectuer des analyses. En R, la fonction `sample()` est couramment utilisée pour réaliser cet échantillonnage. Dans cet article, nous allons explorer comment utiliser cette fonction, avec un exemple concret.

## La fonction sample()

La fonction `sample()` en R permet de tirer des échantillons aléatoires à partir d'un vecteur. Sa syntaxe générale est la suivante :

```R
sample(x, size, replace = FALSE, prob = NULL)
```

- **x** : un vecteur des valeurs à échantillonner.
- **size** : le nombre d'échantillons à tirer.
- **replace** : si `TRUE`, permet de tirer avec remise (c'est-à-dire qu'un élément peut être sélectionné plusieurs fois).
- **prob** : un vecteur de probabilités associées à chaque élément de `x`.

## Exemple concret

Imaginons que nous avons un vecteur représentant les âges de 10 personnes dans un groupe :

```R
# Vecteur d'âges
ages <- c(23, 45, 34, 29, 41, 38, 27, 52, 33, 25)
```

Nous souhaitons échantillonner 3 âges de ce vecteur. Voici comment nous pouvons le faire :

```R
# Échantillonnage de 3 âges sans remise
set.seed(123)  # Pour rendre les résultats reproductibles
sampled_ages <- sample(ages, size = 3, replace = FALSE)
print(sampled_ages)
```

### Explications du code

1. **set.seed(123)** : Cette ligne fixe la "graine" du générateur de nombres aléatoires. Cela garantit que chaque fois que vous exécutez le code, vous obtiendrez les mêmes résultats, ce qui est utile pour la reproductibilité.
2. **sample(ages, size = 3, replace = FALSE)** : Cette fonction tire 3 âges au hasard du vecteur `ages` sans remise. Cela signifie qu'une fois qu'un âge est sélectionné, il ne peut pas être sélectionné à nouveau.

### Résultat

Lorsque vous exécutez ce code, vous obtiendrez un échantillon de 3 âges, par exemple :

```
[1] 41 27 25
```

Chaque fois que vous changez la valeur dans `set.seed()`, vous obtiendrez un autre échantillon aléatoire.

## Conclusion

La fonction `sample()` en R est un outil puissant pour réaliser des échantillons aléatoires de données. Que vous souhaitiez échantillonner sans remise ou avec remise, cette fonction vous offre la flexibilité nécessaire pour vos analyses. N'hésitez pas à l'utiliser dans vos projets de données pour explorer différentes sous-populations de manière aléatoire.

