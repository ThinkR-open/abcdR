---
title: "Interpréter les résultats d'un modèle linéaire avec summary"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - modélisation
    post_tag:
        - summary
        - modèle
---

# Interpréter les résultats d'un modèle linéaire avec summary en R

Le modèle linéaire est un outil statistique puissant qui nous permet d'explorer la relation entre une variable dépendante et une ou plusieurs variables indépendantes. Dans cet article, nous allons voir comment interpréter les résultats d'un modèle linéaire dans R en utilisant la fonction `summary()`.

## Exemple de données

Imaginons que nous souhaitons étudier l'impact de l'âge et du revenu sur la dépense mensuelle d'un individu. Nous allons utiliser un jeu de données fictif pour illustrer cela. Voici comment nous pouvons créer nos données et ajuster un modèle linéaire.

```R
# Création de données fictives
set.seed(123)  # Pour la reproductibilité
n <- 100
age <- rnorm(n, mean = 40, sd = 10)
revenu <- rnorm(n, mean = 3000, sd = 500)
depense <- 200 + 0.5 * age + 0.3 * revenu + rnorm(n, mean = 0, sd = 50)

# Création d'un data frame
donnees <- data.frame(age, revenu, depense)

# Ajustement d'un modèle linéaire
modele <- lm(depense ~ age + revenu, data = donnees)
```

## Résumé du modèle

Maintenant que nous avons ajusté notre modèle, nous devons examiner les résultats à l'aide de la fonction `summary()`.

```R
# Résumé du modèle
resultats <- summary(modele)
print(resultats)
```

## Interprétation des résultats

Lorsque nous exécutons `summary(modele)`, nous obtenons plusieurs informations importantes :

1. **Coefficients** : Cette section montre les estimations des coefficients pour les variables indépendantes (âge et revenu) ainsi que pour l'ordonnée à l'origine (intercept). Par exemple, si le coefficient de l'âge est 0.5, cela signifie qu'une augmentation d'un an est associée à une augmentation de 0.5 unités dans la dépense, toutes choses étant égales par ailleurs.

2. **Erreurs standards** : Chaque coefficient a une erreur standard qui indique la variabilité de l'estimation. Une erreur standard faible par rapport au coefficient indique une estimation plus précise.

3. **Valeurs t et p** : Ces valeurs nous aident à tester l'hypothèse nulle selon laquelle le coefficient est égal à zéro. Une valeur de p inférieure à 0.05 indique que nous pouvons rejeter l'hypothèse nulle et conclure que la variable a un effet significatif sur la variable dépendante.

4. **R-squared** : Ce chiffre indique la proportion de la variance de la variable dépendante qui est expliquée par le modèle. Un R² proche de 1 signifie que le modèle explique bien les données.

5. **F-statistic** : Ce test nous aide à évaluer si le modèle dans son ensemble est significatif. Une valeur p associée à la F-statistic inférieure à 0.05 indique que le modèle est globalement significatif.

## Conclusion

En utilisant `summary()` sur un modèle linéaire dans R, nous pouvons obtenir des informations cruciales sur la relation entre nos variables. Cela nous aide à comprendre quels facteurs influencent significativement la variable dépendante. En suivant les étapes présentées dans cet article, vous serez en mesure d'interpréter les résultats de vos propres modèles linéaires avec confiance.

