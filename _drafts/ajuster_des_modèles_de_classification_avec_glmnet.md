---
title: "Ajuster des modèles de classification avec glmnet"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - classification
    post_tag:
        - glmnet
        - classification
---

# Ajuster des modèles de classification avec glmnet

Le package `glmnet` en R est un outil puissant pour ajuster des modèles de régression et de classification, en particulier lorsque nous avons des données avec un grand nombre de variables prédictives. Ce package utilise la régularisation Lasso et Ridge, ce qui permet de gérer la multicolinéarité et de sélectionner des variables pertinentes.

## Installation et chargement du package

Avant de commencer, assurez-vous d'avoir installé le package `glmnet`. Vous pouvez l'installer avec la commande suivante :

```R
install.packages("glmnet")
```

Ensuite, chargez le package :

```R
library(glmnet)
```

## Exemple concret : Classification avec le jeu de données Iris

Nous allons utiliser le célèbre jeu de données Iris pour illustrer comment ajuster un modèle de classification avec `glmnet`. Ce jeu de données contient des mesures de fleurs d'iris et leur espèce.

### Préparation des données

Nous allons d'abord préparer les données. Nous allons convertir la variable cible (espèce) en un format binaire pour la classification.

```R
# Charger les données
data(iris)

# Convertir l'espèce en variable binaire (versicolor vs. non-versicolor)
iris$Species <- ifelse(iris$Species == "versicolor", 1, 0)

# Séparer les variables prédictives et la variable cible
X <- as.matrix(iris[, 1:4])  # Variables prédictives
y <- iris$Species             # Variable cible
```

### Ajustement du modèle

Nous allons maintenant ajuster un modèle de régression logistique avec régularisation Lasso (L1) en utilisant `glmnet`.

```R
# Ajuster le modèle avec régularisation Lasso
set.seed(123)  # Pour la reproductibilité
model <- glmnet(X, y, family = "binomial", alpha = 1)

# Afficher les coefficients du modèle
print(coef(model))
```

### Prédictions

Une fois le modèle ajusté, nous pouvons faire des prédictions sur de nouvelles données. Pour cela, nous allons utiliser la fonction `predict`.

```R
# Prédictions sur les données d'origine
predictions <- predict(model, newx = X, type = "response")

# Convertir les probabilités en classes
predicted_classes <- ifelse(predictions > 0.5, 1, 0)

# Afficher les premières prédictions
head(predicted_classes)
```

### Évaluation du modèle

Pour évaluer la performance de notre modèle, nous pouvons calculer la précision.

```R
# Calculer la précision
accuracy <- mean(predicted_classes == y)
print(paste("Précision du modèle :", round(accuracy * 100, 2), "%"))
```

## Conclusion

Dans cet article, nous avons vu comment ajuster un modèle de classification avec le package `glmnet` en R. Nous avons utilisé le jeu de données Iris pour illustrer le processus, de la préparation des données à l'évaluation du modèle. Grâce à la régularisation, `glmnet` nous aide à gérer les complexités des données tout en fournissant un modèle robuste pour la classification. N'hésitez pas à explorer d'autres jeux de données et à ajuster les paramètres du modèle pour voir comment cela affecte les résultats !

