---
title: "Faire des prédictions avec predict"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - prédiction
    post_tag:
        - predict
        - prédiction
---

# Faire des prédictions avec `predict` en R

La fonction `predict` en R est un outil puissant qui permet de faire des prédictions à partir de modèles statistiques. Que vous ayez construit un modèle de régression, un modèle de classification ou un autre type de modèle, `predict` vous aide à estimer les valeurs cibles pour de nouvelles données.

## Exemple concret : Prédire les prix de maisons

Pour illustrer l'utilisation de `predict`, nous allons construire un modèle de régression linéaire simple pour prédire les prix de maisons en fonction de leur superficie. Nous utiliserons le jeu de données `mtcars` pour cet exemple, en considérant le poids des voitures comme une analogie à la superficie des maisons.

### Étape 1 : Préparer les données

Tout d'abord, nous allons charger les données et examiner les premières lignes :

```R
# Charger les données
data(mtcars)

# Afficher les premières lignes
head(mtcars)
```

### Étape 2 : Créer le modèle

Nous allons créer un modèle de régression linéaire pour prédire le prix (ou ici, nous utiliserons le `mpg` comme proxy pour le prix) en fonction du poids (`wt`) des voitures.

```R
# Créer le modèle de régression linéaire
modele <- lm(mpg ~ wt, data = mtcars)

# Afficher un résumé du modèle
summary(modele)
```

### Étape 3 : Faire des prédictions

Maintenant que nous avons notre modèle, nous pouvons faire des prédictions. Supposons que nous voulons prédire le `mpg` pour des voitures ayant un poids de 2.5 et 3.0.

```R
# Créer un nouveau jeu de données pour les prédictions
nouvelles_donnees <- data.frame(wt = c(2.5, 3.0))

# Faire des prédictions
predictions <- predict(modele, nouvelles_donnees)

# Afficher les prédictions
predictions
```

### Explications

1. **Chargement des données** : Nous utilisons le jeu de données `mtcars` qui est intégré dans R. Il contient des informations sur différentes voitures, y compris leur poids et leur consommation de carburant.

2. **Création du modèle** : La fonction `lm` (pour "linear model") est utilisée pour créer un modèle de régression linéaire. Dans notre cas, nous prédisons `mpg` (miles per gallon) en fonction de `wt` (poids).

3. **Prédictions** : La fonction `predict` prend en entrée notre modèle et un nouveau jeu de données. Elle retourne les valeurs prédites pour les observations fournies.

### Conclusion

La fonction `predict` est essentielle pour appliquer vos modèles à de nouvelles données. Dans cet exemple, nous avons vu comment construire un modèle de régression simple et utiliser `predict` pour estimer des valeurs. Cette approche peut être étendue à des modèles plus complexes et à des ensembles de données plus riches. N'hésitez pas à explorer davantage et à appliquer ces concepts à vos propres projets !

