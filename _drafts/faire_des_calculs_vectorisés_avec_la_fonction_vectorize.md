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

R est un langage de programmation qui excelle dans le traitement de données grâce à ses capacités de calcul vectorisé. Le calcul vectorisé permet de réaliser des opérations sur des vecteurs entiers sans avoir besoin d'écrire des boucles explicites, ce qui rend le code plus simple et souvent plus rapide. Cependant, il arrive que certaines fonctions ne soient pas naturellement vectorisées. Dans ce cas, nous pouvons utiliser la fonction `Vectorize`.

## Qu'est-ce que Vectorize ?

La fonction `Vectorize` transforme une fonction qui ne prend qu'un seul argument en une fonction qui peut accepter des vecteurs. Cela signifie que vous pouvez appliquer cette fonction à chaque élément d'un vecteur en un seul appel.

## Exemple concret

Prenons un exemple simple pour illustrer l'utilisation de `Vectorize`. Supposons que nous avons une fonction qui calcule le carré d'un nombre :

```r
carre <- function(x) {
  return(x^2)
}
```

Cette fonction fonctionne bien pour un seul nombre. Cependant, si nous souhaitons calculer le carré d'un vecteur de nombres, nous devrions utiliser une boucle. Voici comment nous pourrions le faire sans `Vectorize` :

```r
nombres <- c(1, 2, 3, 4, 5)
resultats <- numeric(length(nombres))

for (i in 1:length(nombres)) {
  resultats[i] <- carre(nombres[i])
}

print(resultats)
```

Cependant, en utilisant `Vectorize`, nous pouvons simplifier ce processus :

```r
carre_vectorise <- Vectorize(carre)

nombres <- c(1, 2, 3, 4, 5)
resultats <- carre_vectorise(nombres)

print(resultats)
```

## Explication du code

1. **Définition de la fonction `carre`** : Nous définissons une fonction qui calcule le carré d'un nombre.
2. **Utilisation de `Vectorize`** : Nous appliquons `Vectorize` à notre fonction `carre`, créant ainsi `carre_vectorise`, qui peut maintenant accepter des vecteurs.
3. **Application sur un vecteur** : Nous créons un vecteur `nombres` contenant les valeurs de 1 à 5 et utilisons notre nouvelle fonction vectorisée pour calculer les carrés de ces nombres.
4. **Affichage des résultats** : Enfin, nous affichons les résultats.

## Conclusion

La fonction `Vectorize` en R est un outil puissant pour simplifier le calcul sur des vecteurs lorsque vos fonctions ne sont pas déjà vectorisées. Elle vous permet d'écrire un code plus propre et plus efficace, tout en évitant les boucles. N'hésitez pas à l'utiliser lorsque vous travaillez avec des fonctions scalaires et que vous souhaitez appliquer des calculs à des vecteurs.

