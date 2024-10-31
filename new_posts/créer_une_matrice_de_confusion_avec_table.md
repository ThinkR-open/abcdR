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

Une matrice de confusion est un outil essentiel en apprentissage automatique pour évaluer la performance d'un modèle de classification. Elle permet de visualiser les performances d'un modèle en comparant les prédictions faites par le modèle avec les vraies étiquettes des données. Dans cet article, nous allons voir comment créer une matrice de confusion en utilisant la fonction `table` en R.

## Exemple concret

Imaginons que nous avons un modèle de classification qui prédit si un email est un spam ou non. Nous allons simuler des prédictions et des vraies étiquettes pour illustrer la création d'une matrice de confusion.

### Étape 1 : Créer des données simulées

Commençons par créer un vecteur de vraies étiquettes et un vecteur de prédictions :

```r
# Vraies étiquettes (1 = spam, 0 = non spam)
vraies_etiquettes <- c(1, 0, 1, 1, 0, 0, 1, 0, 1, 0)

# Prédictions du modèle
predictions <- c(1, 0, 0, 1, 0, 1, 1, 0, 1, 0)
```

### Étape 2 : Créer la matrice de confusion

Nous allons maintenant utiliser la fonction `table` pour créer la matrice de confusion :

```r
# Créer la matrice de confusion
matrice_confusion <- table(vraies_etiquettes, predictions)

# Afficher la matrice de confusion
print(matrice_confusion)
```

### Étape 3 : Interpréter la matrice de confusion

La matrice de confusion affichée ressemblera à ceci :

```
               predictions
vraies_etiquettes  0  1
                 0  4  1
                 1  1  4
```

Dans cette matrice :

- La première ligne représente les vrais négatifs (4) et les faux positifs (1).
- La deuxième ligne représente les faux négatifs (1) et les vrais positifs (4).

### Étape 4 : Calculer les métriques de performance

À partir de la matrice de confusion, nous pouvons calculer plusieurs métriques de performance, telles que la précision, le rappel et le score F1.

```r
# Calculer les métriques
vrais_positifs <- matrice_confusion[2, 2]
vrais_negatifs <- matrice_confusion[1, 1]
faux_positifs <- matrice_confusion[1, 2]
faux_negatifs <- matrice_confusion[2, 1]

precision <- vrais_positifs / (vrais_positifs + faux_positifs)
rappel <- vrais_positifs / (vrais_positifs + faux_negatifs)
f1_score <- 2 * (precision * rappel) / (precision + rappel)

# Afficher les résultats
cat("Précision :", precision, "\n")
cat("Rappel :", rappel, "\n")
cat("Score F1 :", f1_score, "\n")
```

## Conclusion

Créer une matrice de confusion en R est un processus simple grâce à la fonction `table`. Elle permet d'évaluer la performance d'un modèle de classification de manière claire et concise. En utilisant cet outil, vous pouvez facilement calculer des métriques de performance essentielles pour améliorer vos modèles. N'hésitez pas à appliquer cette méthode à vos propres données pour mieux comprendre les performances de vos modèles de classification.

