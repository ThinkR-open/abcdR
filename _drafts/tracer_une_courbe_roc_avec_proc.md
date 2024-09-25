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

La courbe ROC (Receiver Operating Characteristic) est un outil essentiel pour évaluer la performance d'un modèle de classification. Elle permet de visualiser le compromis entre le taux de vrais positifs (sensibilité) et le taux de faux positifs (1 - spécificité) à différents seuils de décision. Dans cet article, nous allons apprendre à tracer une courbe ROC en utilisant le package `pROC` en R.

## Installation du package pROC

Si vous n'avez pas encore installé le package `pROC`, vous pouvez le faire en utilisant la commande suivante :

```R
install.packages("pROC")
```

## Exemple concret

Pour illustrer la création d'une courbe ROC, nous allons utiliser un ensemble de données fictif. Supposons que nous avons un modèle qui prédit si un patient a une maladie (1) ou non (0) en fonction d'un score de risque.

### Étape 1 : Créer des données fictives

Nous allons d'abord créer un petit jeu de données :

```R
# Charger le package
library(pROC)

# Créer un jeu de données fictif
set.seed(123) # Pour la reproductibilité
n <- 100
data <- data.frame(
  score = runif(n, 0, 1), # Scores de risque aléatoires
  maladie = sample(c(0, 1), n, replace = TRUE) # Maladie aléatoire
)
```

### Étape 2 : Calculer la courbe ROC

Nous allons maintenant utiliser la fonction `roc()` du package `pROC` pour calculer la courbe ROC :

```R
# Calculer la courbe ROC
roc_obj <- roc(data$maladie, data$score)
```

### Étape 3 : Tracer la courbe ROC

Une fois que nous avons notre objet ROC, nous pouvons le tracer facilement :

```R
# Tracer la courbe ROC
plot(roc_obj, main = "Courbe ROC", col = "blue", lwd = 2)
```

### Étape 4 : Ajouter des éléments au graphique

Il est souvent utile d'ajouter des éléments supplémentaires au graphique, comme la ligne de référence et l'aire sous la courbe (AUC) :

```R
# Ajouter la ligne de référence
abline(a = 0, b = 1, col = "red", lty = 2)

# Afficher l'AUC
auc_value <- auc(roc_obj)
legend("bottomright", legend = paste("AUC =", round(auc_value, 2)), bty = "n")
```

## Conclusion

Nous avons vu comment tracer une courbe ROC en utilisant le package `pROC` en R. Cette méthode est très utile pour évaluer la performance de modèles de classification. En analysant la courbe ROC et l'AUC, vous pouvez mieux comprendre la capacité de votre modèle à distinguer entre les classes. N'hésitez pas à explorer d'autres fonctionnalités du package `pROC` pour personnaliser vos analyses et visualisations.

