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

# Échantillonner des données avec `sample` en R

L'échantillonnage est une technique essentielle en statistique, permettant de sélectionner un sous-ensemble d'individus ou d'éléments à partir d'une population plus large. En R, la fonction `sample()` est un outil puissant pour réaliser cet échantillonnage. Cet article vous expliquera comment utiliser cette fonction avec un exemple concret.

## La fonction `sample()`

La fonction `sample()` en R permet de tirer au sort des éléments d'un vecteur. Sa syntaxe de base est la suivante :

```R
sample(x, size, replace = FALSE, prob = NULL)
```

- `x` : un vecteur d'éléments à échantillonner.
- `size` : le nombre d'éléments à échantillonner.
- `replace` : un booléen indiquant si l'échantillonnage doit se faire avec remise (`TRUE`) ou sans remise (`FALSE`).
- `prob` : un vecteur de probabilités associées à chaque élément de `x`.

## Exemple concret

Imaginons que nous avons un vecteur représentant les âges de 10 personnes dans un groupe :

```R
ages <- c(25, 30, 22, 35, 40, 28, 33, 27, 31, 29)
```

Nous souhaitons échantillonner 3 âges de ce groupe. Voici comment procéder :

```R
# Définir le vecteur d'âges
ages <- c(25, 30, 22, 35, 40, 28, 33, 27, 31, 29)

# Échantillonner 3 âges sans remise
echantillon <- sample(ages, size = 3, replace = FALSE)

# Afficher l'échantillon
print(echantillon)
```

### Explications du code

1. **Définition du vecteur** : Nous créons un vecteur `ages` contenant les âges de 10 personnes.
2. **Échantillonnage** : Nous utilisons `sample()` pour tirer au sort 3 âges. L'argument `replace = FALSE` signifie que chaque âge ne peut être sélectionné qu'une seule fois.
3. **Affichage** : Enfin, nous affichons l'échantillon obtenu.

## Échantillonnage avec remise

Si nous souhaitons permettre la sélection d'un même âge plusieurs fois, nous pouvons modifier l'argument `replace` :

```R
# Échantillonner 3 âges avec remise
echantillon_avec_remise <- sample(ages, size = 3, replace = TRUE)

# Afficher l'échantillon avec remise
print(echantillon_avec_remise)
```

Dans cet exemple, il est possible que le même âge apparaisse plusieurs fois dans l'échantillon.

## Conclusion

La fonction `sample()` est un outil simple mais puissant pour réaliser des échantillons aléatoires en R. Que ce soit avec ou sans remise, elle vous permet de sélectionner des éléments d'un vecteur de manière efficace. N'hésitez pas à expérimenter avec différents vecteurs et paramètres pour mieux comprendre l'échantillonnage en R !

