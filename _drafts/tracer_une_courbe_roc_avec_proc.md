---
title: "Tracer une courbe ROC avec pROC"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - évaluation
    post_tag:
        - ROC
        - courbe
---

# Tracer une courbe ROC avec pROC en R

La courbe ROC (Receiver Operating Characteristic) est un outil graphique utilisé pour évaluer la performance d'un modèle de classification. Elle permet de visualiser le compromis entre le taux de vrais positifs (sensibilité) et le taux de faux positifs (1 - spécificité) pour différents seuils de décision. Dans cet article, nous allons voir comment tracer une courbe ROC en utilisant le package `pROC` en R.

## Étape 1 : Installer et charger le package pROC

Si vous n'avez pas encore installé le package `pROC`, vous pouvez le faire en utilisant la commande suivante :

```R
install.packages("pROC")
```

Ensuite, chargez le package :

```R
library(pROC)
```

## Étape 2 : Préparer les données

Nous allons utiliser un exemple simple avec un jeu de données fictif. Supposons que nous avons un modèle de classification binaire qui prédit si un patient a une maladie (1) ou non (0). Nous avons également les prédictions de probabilité de ce modèle.

Voici un exemple de données :

```R
# Vérités réelles (0 = pas de maladie, 1 = maladie)
true_labels <- c(0, 0, 1, 1, 0, 1, 1, 0, 1, 0)

# Prédictions de probabilité du modèle
predicted_probabilities <- c(0.1, 0.4, 0.35, 0.8, 0.7, 0.9, 0.6, 0.2, 0.85, 0.3)
```

## Étape 3 : Calculer la courbe ROC

Avec les vraies étiquettes et les probabilités prédites, nous pouvons maintenant calculer la courbe ROC :

```R
roc_curve <- roc(true_labels, predicted_probabilities)
```

## Étape 4 : Tracer la courbe ROC

Pour tracer la courbe ROC, utilisez la fonction `plot()` :

```R
plot(roc_curve, main="Courbe ROC", col="blue", lwd=2)
```

## Étape 5 : Ajouter des informations sur l'aire sous la courbe (AUC)

L'aire sous la courbe (AUC) est une mesure de la performance du modèle. Elle varie entre 0 et 1, où 1 indique une classification parfaite. Pour afficher l'AUC sur le graphique, vous pouvez utiliser la fonction `text()` :

```R
auc_value <- auc(roc_curve)
text(0.5, 0.5, paste("AUC =", round(auc_value, 2)), col="red", cex=1.5)
```

## Exemple complet

Voici l'ensemble du code regroupé :

```R
# Installer et charger le package
install.packages("pROC")
library(pROC)

# Vérités réelles et prédictions
true_labels <- c(0, 0, 1, 1, 0, 1, 1, 0, 1, 0)
predicted_probabilities <- c(0.1, 0.4, 0.35, 0.8, 0.7, 0.9, 0.6, 0.2, 0.85, 0.3)

# Calculer la courbe ROC
roc_curve <- roc(true_labels, predicted_probabilities)

# Tracer la courbe ROC
plot(roc_curve, main="Courbe ROC", col="blue", lwd=2)

# Afficher l'AUC
auc_value <- auc(roc_curve)
text(0.5, 0.5,

