---
title: "Créer une matrice de confusion avec table"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - statistiques
    post_tag:
        - matrice
        - confusion
---

# Créer une matrice de confusion avec `table` en R

Une matrice de confusion est un outil essentiel pour évaluer la performance d'un modèle de classification. Elle permet de comparer les prédictions d'un modèle avec les valeurs réelles. Dans cet article, nous allons voir comment créer une matrice de confusion en utilisant la fonction `table()` en R.

## Étape 1 : Installation et chargement des packages nécessaires

Bien que la fonction `table()` soit incluse dans le package de base de R, il est souvent utile d'utiliser des packages supplémentaires pour l'analyse des données. Cependant, pour la création d'une matrice de confusion simple, nous n'avons pas besoin de packages supplémentaires. Assurons-nous simplement que nous avons R installé sur notre machine.

## Étape 2 : Préparation des données

Pour illustrer comment créer une matrice de confusion, nous allons simuler un petit ensemble de données. Supposons que nous avons un modèle de classification qui prédit si un email est un spam (`1`) ou non (`0`). Voici nos valeurs réelles et nos prédictions :

```R
# Valeurs réelles
valeurs_reelles <- c(0, 1, 1, 0, 1, 0, 0, 1, 0, 1)

# Prédictions du modèle
predictions <- c(0, 0, 1, 0, 1, 1, 0, 1, 0, 1)
```

## Étape 3 : Création de la matrice de confusion

Nous allons maintenant utiliser la fonction `table()` pour créer notre matrice de confusion. La fonction `table()` prend deux vecteurs en entrée : les valeurs réelles et les valeurs prédites.

```R
# Création de la matrice de confusion
matrice_confusion <- table(valeurs_reelles, predictions)

# Affichage de la matrice
print(matrice_confusion)
```

## Étape 4 : Interprétation de la matrice de confusion

La sortie de `print(matrice_confusion)` nous donnera une matrice qui ressemble à ceci :

```
           predictions
valeurs_reelles  0  1
                0  4  1
                1  1  4
```

### Interprétation :

- **Vrai Négatif (VN)** : 4 (valeurs réelles `0` et prédites `0`)
- **Faux Positif (FP)** : 1 (valeurs réelles `0` et prédites `1`)
- **Faux Négatif (FN)** : 1 (valeurs réelles `1` et prédites `0`)
- **Vrai Positif (VP)** : 4 (valeurs réelles `1` et prédites `1`)

À partir de cette matrice, vous pouvez calculer des métriques de performance comme l'exactitude, la précision, le rappel, et le score F1.

## Conclusion

Créer une matrice de confusion en R est simple grâce à la fonction `table()`. Cela vous permet d'évaluer facilement la performance de vos modèles de classification. N'hésitez pas à adapter cet exemple à vos propres données pour analyser vos modèles !

