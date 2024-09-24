---
title: "Écrire des fonctions en R : introduction"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - fonction
    post_tag:
        - fonction
        - R
---

# Écrire des fonctions en R : Introduction

Les fonctions en R sont des blocs de code réutilisables qui permettent d'effectuer des opérations spécifiques. Elles sont essentielles pour structurer votre code, le rendre plus lisible et éviter la répétition. Dans cet article, nous allons explorer la création de fonctions en R à travers un exemple simple.

## Pourquoi utiliser des fonctions ?

1. **Réutilisabilité** : Une fois qu'une fonction est définie, elle peut être appelée plusieurs fois dans un même script ou dans différents scripts.
2. **Lisibilité** : Les fonctions permettent de diviser le code en sections logiques, ce qui facilite sa compréhension.
3. **Maintenance** : Modifier une fonction à un seul endroit met à jour toutes les occurrences de son utilisation.

## Comment définir une fonction en R ?

La syntaxe de base pour créer une fonction en R est la suivante :

```r
nom_de_la_fonction <- function(paramètre1, paramètre2, ...) {
  # Corps de la fonction
  # Instructions à exécuter
  return(valeur_de_retour)
}
```

### Exemple concret

Imaginons que nous souhaitons créer une fonction qui calcule la somme de deux nombres. Voici comment nous procéderions :

```r
# Définition de la fonction
somme <- function(a, b) {
  resultat <- a + b  # On calcule la somme
  return(resultat)   # On retourne le résultat
}

# Appel de la fonction
resultat_somme <- somme(5, 3)
print(resultat_somme)  # Affiche 8
```

### Explication du code

1. **Définition de la fonction** : Nous avons défini une fonction nommée `somme` qui prend deux paramètres `a` et `b`.
2. **Calcul de la somme** : À l'intérieur de la fonction, nous effectuons l'opération de somme et stockons le résultat dans la variable `resultat`.
3. **Retourner le résultat** : Nous utilisons `return()` pour renvoyer le résultat de la fonction.
4. **Appel de la fonction** : Nous appelons la fonction `somme` avec les arguments `5` et `3` et stockons le résultat dans `resultat_somme`.
5. **Affichage du résultat** : Enfin, nous affichons le résultat à l'aide de `print()`.

## Conclusion

Les fonctions en R sont un outil puissant qui facilite le développement de scripts et de programmes. Elles permettent de structurer le code, d'améliorer sa lisibilité et de simplifier sa maintenance. Dans cet article, nous avons vu comment définir et utiliser une fonction simple pour calculer la somme de deux nombres. N'hésitez pas à expérimenter et à créer vos propres fonctions pour vous familiariser davantage avec cette fonctionnalité essentielle du langage R.

