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

Dans le monde de l'analyse de données, les modèles de classification jouent un rôle crucial. Ils permettent de prédire des catégories en fonction de caractéristiques d'entrée. L'une des bibliothèques les plus puissantes pour ajuster ces modèles en R est `glmnet`. Cette bibliothèque propose des techniques avancées comme la régression logistique avec régularisation Lasso et Ridge, ce qui aide à gérer les problèmes de sur-apprentissage.

## Installation de la bibliothèque

Avant de commencer, assurez-vous d'avoir installé le package `glmnet`. Vous pouvez l'installer avec le code suivant :

```R
install.packages("glmnet")
```

## Exemple de classification

Prenons un exemple concret pour illustrer comment utiliser `glmnet` pour ajuster un modèle de classification. Nous allons utiliser le jeu de données `iris`, qui est bien connu et contient des mesures de fleurs d'iris.

### Chargement des données

Voici comment charger le jeu de données :

```R
# Charger les bibliothèques nécessaires
library(glmnet)

# Charger les données iris
data(iris)

# Visualiser les premières lignes des données
head(iris)
```

Le jeu de données `iris` contient quatre caractéristiques (longueur et largeur des pétales et sépales) et une variable cible qui indique l'espèce de chaque fleur.

### Préparation des données

Pour utiliser `glmnet`, nous devons préparer nos données. Nous allons convertir la variable cible en format binaire pour simplifier notre exemple. Supposons que nous souhaitons prédire si l'iris est de l'espèce "setosa" ou non.

```R
# Convertir l'espèce en binaire
iris$Species <- ifelse(iris$Species == "setosa", 1, 0)

# Séparer les caractéristiques et la cible
X <- as.matrix(iris[, 1:4])  # Caractéristiques
y <- iris$Species             # Cible
```

### Ajustement du modèle

Nous allons maintenant ajuster un modèle de régression logistique avec régularisation Lasso en utilisant `glmnet`. Le paramètre alpha est fixé à 1 pour le Lasso.

```R
# Ajuster le modèle
set.seed(123)  # Pour la reproductibilité
model <- glmnet(X, y, family = "binomial", alpha = 1)

# Afficher les coefficients
print(model)
```

### Prédiction

Pour effectuer des prédictions, nous pouvons utiliser la fonction `predict`. Voici comment prédire sur les mêmes données :

```R
# Prédire sur les données d'entraînement
predictions <- predict(model, newx = X, type = "response")

# Convertir les probabilités en classes
predicted_classes <- ifelse(predictions > 0.5, 1, 0)

# Afficher les résultats
table(predicted_classes, y)
```

### Conclusion

Dans cet article, nous avons vu comment ajuster un modèle de classification en utilisant `glmnet` avec le jeu de données `iris`. Grâce à la régularisation, `glmnet` permet de gérer la complexité du modèle et d'améliorer la généralisation sur de nouvelles données. Cette méthode est particulièrement utile lorsque vous avez un grand nombre de variables prédictives.

N'hésitez pas à explorer d'autres jeux de données et à ajuster les hyperparamètres pour voir comment cela affecte vos résultats !

