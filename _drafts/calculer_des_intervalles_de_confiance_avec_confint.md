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

Les intervalles de confiance sont des outils statistiques essentiels qui nous permettent d'estimer l'incertitude d'un paramètre estimé à partir d'un échantillon. En R, la fonction `confint()` est souvent utilisée pour calculer ces intervalles de confiance, notamment pour les modèles de régression.

## Qu'est-ce qu'un intervalle de confiance ?

Un intervalle de confiance (IC) donne une plage de valeurs qui, avec un certain niveau de confiance (par exemple, 95%), contient le vrai paramètre de la population. Par exemple, si nous estimons la moyenne d'une population et trouvons un IC de [10, 15], nous pouvons dire que nous avons 95% de confiance que la vraie moyenne se situe entre 10 et 15.

## Exemple concret

Imaginons que nous souhaitions étudier l'impact d'une heure d'étude supplémentaire sur les notes d'examen des étudiants. Nous allons générer un jeu de données fictif et ajuster un modèle de régression linéaire.

### Étape 1 : Générer des données

```r
# Générer des données
set.seed(123) # Pour la reproductibilité
n <- 100
heures_etude <- rnorm(n, mean = 5, sd = 2) # Heures d'étude
notes <- 50 + 10 * heures_etude + rnorm(n) # Notes avec un bruit aléatoire

# Créer un dataframe
data <- data.frame(heures_etude, notes)
```

### Étape 2 : Ajuster un modèle de régression

Nous allons maintenant ajuster un modèle de régression linéaire simple pour prédire les notes en fonction des heures d'étude.

```r
# Ajuster le modèle de régression
modele <- lm(notes ~ heures_etude, data = data)
```

### Étape 3 : Calculer l'intervalle de confiance

Utilisons la fonction `confint()` pour obtenir les intervalles de confiance des coefficients du modèle.

```r
# Calculer les intervalles de confiance
intervalle_confiance <- confint(modele)
print(intervalle_confiance)
```

### Interprétation des résultats

Les résultats de `confint(modele)` nous donneront une matrice où chaque ligne correspond à un coefficient du modèle (l'intercept et le coefficient associé aux heures d'étude) et chaque colonne représente les bornes inférieure et supérieure de l'intervalle de confiance à 95%.

Par exemple, si pour le coefficient de `heures_etude`, l'intervalle de confiance est [8, 12], cela signifie que nous sommes 95% confiants que l'effet d'une heure d'étude supplémentaire sur la note se situe entre 8 et 12 points.

## Conclusion

Calculer des intervalles de confiance dans R à l'aide de `confint()` est un processus simple mais puissant qui nous aide à comprendre l'incertitude associée à nos estimations. Que ce soit pour des modèles de régression ou d'autres analyses, maîtriser cette fonction est essentiel pour toute personne travaillant avec des données statistiques.

