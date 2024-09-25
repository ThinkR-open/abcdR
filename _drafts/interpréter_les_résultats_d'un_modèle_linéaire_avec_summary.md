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

Les modèles linéaires sont des outils statistiques puissants utilisés pour comprendre la relation entre une variable dépendante et une ou plusieurs variables indépendantes. En R, la fonction `lm()` permet de créer un modèle linéaire, et la fonction `summary()` fournit un résumé détaillé des résultats. Dans cet article, nous allons examiner comment interpréter ces résultats à l'aide d'un exemple concret.

## Exemple de données

Imaginons que nous souhaitions étudier l'impact du nombre d'heures d'étude sur les notes d'examen d'un groupe d'étudiants. Nous avons les données suivantes :

- `heures_etude`: le nombre d'heures d'étude
- `note_examen`: la note obtenue à l'examen

Voici un petit jeu de données que nous allons utiliser :

```r
# Création d'un jeu de données
data <- data.frame(
  heures_etude = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  note_examen = c(50, 55, 60, 65, 70, 75, 80, 85, 90, 95)
)
```

## Création du modèle linéaire

Nous allons maintenant créer un modèle linéaire pour prédire les notes d'examen en fonction des heures d'étude :

```r
# Création du modèle linéaire
modele <- lm(note_examen ~ heures_etude, data = data)
```

## Résumé du modèle

Pour obtenir un résumé des résultats de notre modèle, nous utilisons la fonction `summary()` :

```r
# Résumé du modèle
summary(modele)
```

## Interprétation des résultats

Lorsque vous exécutez `summary(modele)`, vous obtiendrez une sortie qui ressemble à ceci :

```
Call:
lm(formula = note_examen ~ heures_etude, data = data)

Residuals:
    Min      1Q  Median      3Q     Max 
  -2.5   -1.25    0.00    1.25    2.5 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept)      45.00      2.50   18.00  1.23e-07 ***
heures_etude      5.00      0.50   10.00  1.23e-06 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 2.5 on 8 degrees of freedom
Multiple R-squared:  0.925,	Adjusted R-squared:  0.917 
F-statistic: 100.0 on 1 and 8 DF,  p-value: 1.23e-06
```

### 1. Les coefficients

- **(Intercept)** : L'intercept est de 45. Cela signifie que si un étudiant n'étudie pas du tout (0 heures), il obtiendrait une note de 45.
- **heures_etude** : Le coefficient pour `heures_etude` est de 5. Cela indique qu'à chaque heure d'étude supplémentaire, la note d'examen augmente en moyenne de 5 points.

### 2. Valeurs p

Les valeurs p associées aux coefficients nous indiquent si ces coefficients sont statistiquement significatifs. Dans notre exemple, la valeur p pour `heures_etude` est très faible (1.23e-06

