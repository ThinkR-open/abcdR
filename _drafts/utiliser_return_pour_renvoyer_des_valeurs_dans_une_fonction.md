---
title: "Utiliser return pour renvoyer des valeurs dans une fonction"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - fonction
    post_tag:
        - return
        - fonction
---

# Utiliser `return` pour renvoyer des valeurs dans une fonction en R

En R, les fonctions sont des blocs de code qui réalisent des tâches spécifiques. Lorsqu'une fonction est exécutée, elle peut renvoyer une valeur à l'aide de l'instruction `return()`. Cela permet de récupérer le résultat d'une fonction pour l'utiliser ultérieurement dans votre code.

## Pourquoi utiliser `return` ?

L'instruction `return()` est utile lorsque vous souhaitez renvoyer une valeur spécifique d'une fonction. Bien que R renvoie automatiquement la dernière valeur calculée si `return()` n'est pas utilisé, il est souvent préférable d'utiliser `return()` pour des raisons de clarté et de lisibilité.

## Exemple concret

Prenons un exemple simple : une fonction qui calcule le carré d'un nombre. Nous allons créer une fonction appelée `carre` qui prend un nombre en entrée et renvoie son carré.

```r
carre <- function(x) {
  resultat <- x^2  # Calculer le carré de x
  return(resultat) # Renvoyer le résultat
}

# Utilisation de la fonction
nombre <- 4
resultat_carre <- carre(nombre)
print(resultat_carre) # Affiche 16
```

### Explication du code

1. **Définition de la fonction** : Nous définissons une fonction appelée `carre` qui prend un argument `x`.
2. **Calcul du carré** : À l'intérieur de la fonction, nous calculons le carré de `x` et stockons le résultat dans la variable `resultat`.
3. **Renvoyer le résultat** : Nous utilisons `return(resultat)` pour renvoyer le carré de `x`.
4. **Utilisation de la fonction** : Nous appelons la fonction `carre` avec le nombre 4 et stockons le résultat dans la variable `resultat_carre`.
5. **Affichage du résultat** : Enfin, nous affichons le résultat, qui est 16.

## Conclusion

L'utilisation de `return()` dans une fonction en R est une pratique recommandée pour renvoyer des valeurs de manière explicite. Cela améliore la lisibilité de votre code et facilite la compréhension de ce que fait votre fonction. N'hésitez pas à utiliser `return()` dans vos propres fonctions pour des résultats clairs et précis.

