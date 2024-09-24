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

Tester un package R est une étape essentielle pour garantir que votre code fonctionne comme prévu. L'une des bibliothèques les plus populaires pour effectuer des tests en R est `testthat`. Dans cet article, nous allons explorer comment utiliser `testthat` pour tester un package R avec un exemple concret.

## Installation de testthat

Avant de commencer, assurez-vous d'avoir installé le package `testthat`. Vous pouvez l'installer depuis CRAN avec la commande suivante :

```R
install.packages("testthat")
```

## Structure d'un package R

Un package R typique a une structure de répertoires. Voici une structure de base :

```
monPackage/
├── R/
│   └── ma_fonction.R
├── tests/
│   └── testthat/
│       └── test-ma_fonction.R
├── DESCRIPTION
└── NAMESPACE
```

- Le répertoire `R/` contient vos fonctions.
- Le répertoire `tests/testthat/` contient vos fichiers de test.
- Le fichier `DESCRIPTION` contient des métadonnées sur votre package.

## Exemple de fonction

Imaginons que nous avons une fonction simple qui additionne deux nombres. Voici comment elle pourrait être définie dans `ma_fonction.R` :

```R
# R/ma_fonction.R
additionner <- function(a, b) {
  return(a + b)
}
```

## Écriture de tests avec testthat

Maintenant, nous allons écrire des tests pour cette fonction. Les tests seront placés dans le fichier `test-ma_fonction.R` :

```R
# tests/testthat/test-ma_fonction.R
library(testthat)
library(monPackage)  # Assurez-vous de charger votre package

test_that("additionner fonctionne correctement", {
  expect_equal(additionner(1, 2), 3)
  expect_equal(additionner(-1, 1), 0)
  expect_equal(additionner(0, 0), 0)
})
```

### Explication des tests

- `test_that()` : C'est la fonction principale qui définit un test. Elle prend une description et une expression.
- `expect_equal()` : C'est une assertion qui vérifie que les deux valeurs données sont égales. Si elles ne le sont pas, le test échoue.

## Exécution des tests

Pour exécuter vos tests, vous pouvez utiliser la fonction `test_dir()` ou `test_file()` de `testthat`. Voici comment exécuter tous les tests dans le répertoire `tests/` :

```R
library(testthat)
test_dir("tests/testthat")
```

Cette commande exécutera tous les tests que vous avez définis dans le répertoire `testthat`.

## Conclusion

Utiliser `testthat` pour tester un package R est une pratique recommandée pour s'assurer que votre code fonctionne comme prévu. Dans cet article, nous avons vu comment créer une fonction simple, écrire des tests pour celle-ci et exécuter ces tests. L'ajout de tests à votre workflow de développement vous aidera à maintenir la qualité de votre code au fil du temps. N'hésitez pas à explorer d'autres fonctionnalités de `testthat` pour des tests plus avancés, comme les tests de performance ou les tests d'erreur.

