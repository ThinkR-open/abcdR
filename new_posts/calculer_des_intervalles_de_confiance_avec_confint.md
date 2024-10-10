---
title: "Calculer des intervalles de confiance avec confint"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - statistiques
    post_tag:
        - confint
        - intervalles
---

# Calculer des intervalles de confiance avec `confint` en R

Les intervalles de confiance sont des outils statistiques essentiels qui nous permettent d'estimer une plage de valeurs dans laquelle se trouve un paramètre de population avec un certain niveau de confiance. En R, la fonction `confint()` est souvent utilisée pour calculer ces intervalles de confiance, notamment pour les modèles linéaires.

## Qu'est-ce qu'un intervalle de confiance ?

Un intervalle de confiance (IC) est une estimation d'une plage de valeurs qui est susceptible de contenir un paramètre de population. Par exemple, si nous avons un échantillon et que nous calculons la moyenne, l'intervalle de confiance nous donne une idée de l'incertitude associée à cette estimation.

## Exemple concret

Imaginons que nous souhaitons étudier l'impact de l'âge sur le revenu. Nous allons créer un jeu de données fictif et ajuster un modèle linéaire. Ensuite, nous utiliserons `confint()` pour calculer les intervalles de confiance pour les coefficients de notre modèle.

### Étape 1 : Créer un jeu de données

```R
# Chargement des bibliothèques nécessaires
set.seed(123)  # Pour la reproductibilité

# Création d'un jeu de données fictif
n <- 100
age <- rnorm(n, mean = 50, sd = 10)  # Âge moyen de 50 ans
revenu <- 2000 + 30 * age + rnorm(n, mean = 0, sd = 200)  # Revenu en fonction de l'âge

# Création d'un data frame
data <- data.frame(age, revenu)
```

### Étape 2 : Ajuster un modèle linéaire

Nous allons ajuster un modèle linéaire pour prédire le revenu en fonction de l'âge.

```R
# Ajustement du modèle linéaire
modele <- lm(revenu ~ age, data = data)
summary(modele)  # Affichage du résumé du modèle
```

### Étape 3 : Calculer les intervalles de confiance

Maintenant, nous allons utiliser la fonction `confint()` pour calculer les intervalles de confiance des coefficients du modèle.

```R
# Calcul des intervalles de confiance à 95%
intervales_confiance <- confint(modele, level = 0.95)
print(intervales_confiance)
```

### Explications des résultats

La fonction `confint()` renvoie un tableau avec les bornes inférieure et supérieure de l'intervalle de confiance pour chaque coefficient du modèle. Par exemple, si nous avons un coefficient pour l'âge, l'intervalle de confiance nous indiquera la plage dans laquelle nous pouvons être confiants que le vrai coefficient se situe, avec un niveau de confiance de 95 %.

## Conclusion

Les intervalles de confiance sont un outil puissant pour quantifier l'incertitude dans nos estimations. Grâce à la fonction `confint()` en R, il est facile de calculer ces intervalles pour les modèles linéaires. Cela nous aide à mieux comprendre la précision de nos estimations et à prendre des décisions éclairées basées sur nos analyses.

