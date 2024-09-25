---
title: "Utiliser testthat pour tester un package R"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - tests
    post_tag:
        - testthat
        - tests
---

# Utiliser testthat pour tester un package R

Lorsque vous développez un package R, il est crucial de s'assurer que votre code fonctionne comme prévu. Pour cela, la bibliothèque `testthat` est un outil incontournable qui facilite l'écriture de tests unitaires. Dans cet article, nous allons voir comment utiliser `testthat` pour tester un package R avec un exemple concret.

## Installation de testthat

Avant de commencer, assurez-vous que le package `testthat` est installé. Vous pouvez l'installer depuis CRAN avec la commande suivante :

```R
install.packages("testthat")
```

## Structure d'un package R

Un package R a une structure spécifique. Pour cet exemple, nous allons créer un package simple appelé `monpackage`. Voici comment créer la structure de base :

```R
usethis::create_package("monpackage")
```

Cette commande crée un dossier `monpackage` avec les fichiers nécessaires. Ensuite, nous allons créer une fonction simple à tester.

## Création d'une fonction

Dans le dossier `R` de votre package, créons une fonction qui additionne deux nombres. Créez un fichier `addition.R` et ajoutez le code suivant :

```R
#' Additionne deux nombres
#'
#' @param a Un nombre
#' @param b Un nombre
#' @return La somme de a et b
#' @export
addition <- function(a, b) {
  return(a + b)
}
```

## Écriture des tests avec testthat

Maintenant, nous allons écrire des tests pour notre fonction `addition`. Créez un dossier `tests/testthat` dans votre package, puis créez un fichier `test-addition.R` à l'intérieur de ce dossier. Ajoutez le code suivant :

```R
library(testthat)
library(monpackage)

test_that("addition fonctionne correctement", {
  expect_equal(addition(1, 2), 3)
  expect_equal(addition(-1, 1), 0)
  expect_equal(addition(0, 0), 0)
})
```

### Explication du code de test

- `library(testthat)` : Charge le package `testthat`.
- `library(monpackage)` : Charge votre package pour pouvoir tester ses fonctions.
- `test_that("addition fonctionne correctement", {...})` : Définit un groupe de tests pour la fonction `addition`.
- `expect_equal(...)` : Vérifie que le résultat de la fonction est égal à la valeur attendue.

## Exécution des tests

Pour exécuter les tests, vous pouvez utiliser la fonction suivante dans la console R :

```R
devtools::test()
```

Cette commande exécutera tous les tests présents dans le dossier `tests/testthat`. Vous devriez voir un message indiquant que tous les tests ont réussi si tout fonctionne correctement.

## Conclusion

Dans cet article, nous avons vu comment utiliser `testthat` pour tester un package R. Nous avons créé une fonction simple et écrit des tests pour nous assurer qu'elle fonctionne comme prévu. L'utilisation de tests unitaires est une bonne pratique qui vous aidera à maintenir la qualité de votre code au fil du temps. N'hésitez pas à explorer davantage les fonctionnalités de `testthat` pour écrire des tests plus complexes et robustes.

