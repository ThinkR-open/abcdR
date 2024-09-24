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

# Faire des Prédictions avec `predict` en R

Dans le langage R, la fonction `predict` est un outil puissant permettant de faire des prédictions à partir de modèles statistiques. Que vous ayez construit un modèle de régression linéaire, un arbre de décision ou un modèle de machine learning, `predict` vous aidera à estimer les valeurs pour de nouvelles observations.

## Exemple concret : Régression Linéaire

Imaginons que nous avons un jeu de données sur les prix des maisons en fonction de leur superficie. Nous allons créer un modèle de régression linéaire et utiliser `predict` pour estimer le prix d'une maison en fonction de sa superficie.

### Étape 1 : Créer un jeu de données

Commençons par créer un petit jeu de données :

```r
# Création d'un jeu de données
data <- data.frame(
  superficie = c(50, 75, 100, 125, 150),
  prix = c(150000, 200000, 250000, 300000, 350000)
)
```

### Étape 2 : Ajuster le modèle de régression linéaire

Nous allons ajuster un modèle de régression linéaire avec `lm()` :

```r
# Ajustement du modèle
modele <- lm(prix ~ superficie, data = data)
summary(modele)
```

### Étape 3 : Faire des prédictions

Maintenant que nous avons notre modèle, nous pouvons faire des prédictions. Supposons que nous voulons prédire le prix d'une maison ayant une superficie de 110 m² :

```r
# Données pour la prédiction
nouvelles_observations <- data.frame(superficie = c(110))

# Prédictions
predictions <- predict(modele, nouvelles_observations)
print(predictions)
```

### Explication du code

1. **Création du jeu de données** : Nous avons créé un DataFrame contenant deux colonnes : `superficie` et `prix`.
2. **Ajustement du modèle** : La fonction `lm()` ajuste un modèle de régression linéaire. Ici, nous prédisons `prix` en fonction de `superficie`.
3. **Prédictions** : Nous avons créé un nouveau DataFrame contenant la superficie pour laquelle nous voulons faire la prédiction. Ensuite, nous utilisons `predict()` pour obtenir le prix estimé.

### Résultat

Lorsque vous exécuterez le code de prédiction, vous obtiendrez une estimation du prix d'une maison de 110 m², basée sur le modèle ajusté. Cela vous montre comment un modèle de régression peut être utilisé pour faire des prévisions sur de nouvelles données.

### Conclusion

La fonction `predict` est essentielle pour appliquer vos modèles statistiques à des données nouvelles. Que ce soit pour des analyses simples ou des modèles complexes, `predict` facilite le processus de prévision. N'hésitez pas à explorer d'autres types de modèles et à les utiliser avec `predict` pour enrichir vos analyses en R !

