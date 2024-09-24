---
title: "Utiliser roxygen2 pour documenter un package"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - documentation
    post_tag:
        - roxygen2
        - documentation
---

# Utiliser roxygen2 pour documenter un package R

La documentation est un aspect essentiel du développement d'un package en R. Elle permet aux utilisateurs de comprendre comment utiliser les fonctions et les données fournies. `roxygen2` est un outil populaire qui facilite la génération de documentation en intégrant des commentaires directement dans le code. Dans cet article, nous allons voir comment utiliser `roxygen2` pour documenter un package R de manière simple et efficace.

## Prérequis

Avant de commencer, assurez-vous d'avoir installé le package `roxygen2`. Vous pouvez l'installer depuis CRAN en utilisant la commande suivante :

```R
install.packages("roxygen2")
```

## Structure de base d'un package

Pour illustrer l'utilisation de `roxygen2`, créons un petit package. D'abord, nous allons créer un répertoire pour notre package :

```R
usethis::create_package("monPackage")
```

Cela va créer une structure de dossier pour notre package. Ensuite, nous allons ajouter une fonction simple à notre package.

## Exemple de fonction

Créons une fonction qui calcule la somme de deux nombres. Créez un fichier `R/somme.R` avec le contenu suivant :

```R
#' Additionne deux nombres
#'
#' Cette fonction prend deux nombres en entrée et renvoie leur somme.
#'
#' @param a Un nombre.
#' @param b Un autre nombre.
#' @return La somme de a et b.
#' @examples
#' somme(2, 3)
#' somme(5, 7)
somme <- function(a, b) {
  return(a + b)
}
```

### Explication des balises

Dans le code ci-dessus, nous avons utilisé plusieurs balises `roxygen2` :

- `@param` : décrit chaque paramètre de la fonction.
- `@return` : indique ce que la fonction renvoie.
- `@examples` : fournit des exemples d'utilisation de la fonction.

## Générer la documentation

Une fois que vous avez ajouté vos commentaires `roxygen2`, vous pouvez générer la documentation en utilisant la fonction suivante :

```R
library(roxygen2)
roxygen2::roxygenise("monPackage")
```

Cette commande va créer un fichier `monPackage-manual.rd` dans le dossier `man`, qui contient la documentation de votre fonction.

## Installer et tester le package

Pour tester votre package, vous devez l'installer. Utilisez la commande suivante :

```R
devtools::install("monPackage")
```

Après l'installation, vous pouvez utiliser votre fonction `somme` dans R :

```R
library(monPackage)
somme(2, 3)  # Cela renverra 5
```

## Conclusion

`roxygen2` est un outil puissant et simple pour documenter vos packages R. En intégrant la documentation directement dans le code, vous facilitez le maintien et la compréhension de votre package. N'oubliez pas de documenter chaque fonction que vous créez pour offrir une expérience utilisateur optimale. Avec cette approche, vous pouvez rapidement créer une documentation claire et accessible pour vos utilisateurs.

