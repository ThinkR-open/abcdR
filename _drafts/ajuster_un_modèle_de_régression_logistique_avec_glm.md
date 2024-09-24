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

# Ajuster un Modèle de Régression Logistique avec `glm` en R

La régression logistique est un outil puissant pour modéliser des relations entre une variable dépendante binaire (0 ou 1) et une ou plusieurs variables indépendantes. Dans cet article, nous allons voir comment ajuster un modèle de régression logistique en utilisant la fonction `glm` (Generalized Linear Model) de R.

## Qu'est-ce que la régression logistique ?

La régression logistique est utilisée lorsque la variable à prédire est de nature binaire. Par exemple, nous pourrions être intéressés à prédire si un patient a une maladie (1) ou non (0) en fonction de divers facteurs comme l'âge, le poids, etc.

## Exemple concret

Imaginons que nous disposons d'un jeu de données fictif sur des patients, et que nous voulons prédire si un patient est diabétique en fonction de son âge et de son indice de masse corporelle (IMC).

### Étape 1 : Créer un jeu de données

Commençons par créer un petit jeu de données :

```R
# Création d'un jeu de données fictif
set.seed(123)  # Pour la reproductibilité
n <- 100
age <- rnorm(n, mean = 50, sd = 10)  # Âge moyen de 50 ans
imc <- rnorm(n, mean = 25, sd = 5)   # IMC moyen de 25
diabete <- ifelse(runif(n) < plogis(0.05 * age - 0.1 * imc), 1, 0)  # Variable binaire

data <- data.frame(age, imc, diabete)
```

### Étape 2 : Ajuster le modèle de régression logistique

Utilisons maintenant la fonction `glm` pour ajuster notre modèle :

```R
# Ajustement du modèle de régression logistique
modele <- glm(diabete ~ age + imc, data = data, family = binomial)

# Résumé du modèle
summary(modele)
```

### Explication du code

1. **Création des données** :
   - Nous avons généré 100 observations pour l'âge et l'IMC, et nous avons créé une variable binaire `diabete` en utilisant une fonction logistique pour introduire une dépendance entre les variables.

2. **Ajustement du modèle** :
   - La fonction `glm` prend trois arguments principaux :
     - La formule de notre modèle `diabete ~ age + imc`, qui indique que `diabete` dépend de `age` et `imc`.
     - Le paramètre `data` qui spécifie le jeu de données à utiliser.
     - Le paramètre `family = binomial`, qui indique que nous réalisons une régression logistique.

3. **Résultat du modèle** :
   - La fonction `summary(modele)` nous donne des informations sur les coefficients du modèle, les erreurs standard, les statistiques z, et les valeurs p. Ces informations sont cruciales pour interpréter les résultats.

### Étape 3 : Interpréter les résultats

Les coefficients du modèle nous indiquent l'impact des variables indépendantes sur la probabilité que la variable dépendante soit égale à 1 (dans notre cas, que le patient soit diabétique). Par exemple, un coefficient positif pour `age` signifie qu'une augmentation de l'âge est associée à une augmentation de la probabilité d'être diabétique.

## Conclusion

Nous avons vu comment ajuster un modèle de régression logistique en utilisant la fonction `glm` en R. Ce modèle est très utile pour prédire des résultats binaires à partir de variables explicatives. Avec ce simple exemple, vous êtes maintenant prêt

