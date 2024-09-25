---
title: "Ajuster un modèle de régression logistique avec glm"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - modélisation
    post_tag:
        - glm
        - logistique
---

# Ajuster un modèle de régression logistique avec glm en R

La régression logistique est une méthode statistique utilisée pour modéliser la relation entre une variable dépendante binaire et une ou plusieurs variables indépendantes. Dans cet article, nous allons voir comment ajuster un modèle de régression logistique en utilisant la fonction `glm()` de R.

## Qu'est-ce que la régression logistique ?

La régression logistique est utilisée lorsque la variable cible est binaire, c'est-à-dire qu'elle prend deux valeurs, souvent codées comme 0 et 1. Par exemple, nous pourrions vouloir prédire si un client va acheter un produit (1) ou non (0) en fonction de certaines caractéristiques.

## Exemple concret

Imaginons que nous avons un jeu de données sur des clients d'une boutique en ligne, et nous voulons prédire si un client va acheter un produit en fonction de son âge et de son revenu. Voici comment nous pourrions procéder.

### Étape 1 : Créer un jeu de données

Commençons par créer un petit jeu de données :

```r
# Création d'un jeu de données
set.seed(123)  # Pour la reproductibilité
data <- data.frame(
  age = c(22, 25, 47, 52, 46, 23, 34, 45, 31, 29),
  income = c(30000, 40000, 60000, 80000, 70000, 32000, 50000, 90000, 45000, 38000),
  purchase = c(0, 0, 1, 1, 1, 0, 1, 1, 0, 0)  # 0 = non, 1 = oui
)
```

### Étape 2 : Ajuster le modèle de régression logistique

Nous allons maintenant utiliser la fonction `glm()` pour ajuster notre modèle. La syntaxe de `glm()` est la suivante :

```r
modèle <- glm(formule, famille, données)
```

Dans notre cas, la formule sera `purchase ~ age + income`, la famille sera `binomial` pour indiquer que nous faisons une régression logistique, et nous utiliserons notre jeu de données `data`.

```r
# Ajustement du modèle de régression logistique
modèle <- glm(purchase ~ age + income, family = binomial, data = data)
```

### Étape 3 : Résumé du modèle

Pour voir les résultats de notre ajustement, nous pouvons utiliser la fonction `summary()` :

```r
# Résumé du modèle
summary(modèle)
```

Cette commande affichera les coefficients du modèle, les erreurs standards, les valeurs z et les p-values pour chaque variable. Les coefficients nous indiquent l'effet de chaque variable indépendante sur la probabilité d'achat.

### Étape 4 : Prédictions

Une fois le modèle ajusté, nous pouvons l'utiliser pour faire des prédictions. Par exemple, pour prédire la probabilité qu'un client de 30 ans avec un revenu de 50000 achète un produit, nous pouvons utiliser la fonction `predict()` :

```r
# Prédiction pour un nouveau client
nouveau_client <- data.frame(age = 30, income = 50000)
probabilité_achat <- predict(modèle, nouveau_client, type = "response")
print(probabilité_achat)
```

Cette commande nous donnera la probabilité que ce client achète le produit.

## Conclusion

La régression logistique est un outil puissant pour modéliser des résultats binaires. Avec la fonction `glm()` de R, il est facile d'ajuster un modèle et d'interpréter les résultats. En utilisant cet exemple concret, vous pouvez commencer à appliquer la ré

