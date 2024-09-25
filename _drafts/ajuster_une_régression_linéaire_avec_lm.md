---
title: "Ajuster une régression linéaire avec lm"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - modélisation
    post_tag:
        - lm
        - régression
---

# Ajuster une régression linéaire avec lm en R

La régression linéaire est une méthode statistique utilisée pour modéliser la relation entre une variable dépendante et une ou plusieurs variables indépendantes. En R, la fonction `lm()` est utilisée pour ajuster un modèle de régression linéaire. Dans cet article, nous allons explorer comment utiliser cette fonction avec un exemple concret.

## Comprendre la fonction lm()

La fonction `lm()` prend la forme suivante :

```R
lm(formule, data)
```

- `formule` : une formule qui décrit la relation entre les variables. Par exemple, `y ~ x1 + x2` indique que `y` est la variable dépendante et `x1` et `x2` sont les variables indépendantes.
- `data` : le cadre de données contenant les variables.

## Exemple concret

Supposons que nous avons un ensemble de données sur les ventes d'une entreprise en fonction de la publicité et du prix. Voici un exemple de données :

```R
# Création d'un cadre de données
data <- data.frame(
  ventes = c(200, 300, 400, 500, 600),
  publicite = c(50, 60, 70, 80, 90),
  prix = c(20, 25, 30, 35, 40)
)
```

Dans cet exemple, `ventes` est notre variable dépendante, tandis que `publicite` et `prix` sont nos variables indépendantes.

### Ajustement du modèle

Nous allons maintenant ajuster un modèle de régression linéaire pour prédire les ventes en fonction de la publicité et du prix.

```R
# Ajustement du modèle de régression linéaire
modele <- lm(ventes ~ publicite + prix, data = data)
```

### Résumé du modèle

Pour voir les résultats de notre modèle, nous pouvons utiliser la fonction `summary()` :

```R
# Résumé du modèle
summary(modele)
```

Cette commande affichera plusieurs informations utiles, notamment :

- Les coefficients des variables (l'impact de chaque variable indépendante sur la variable dépendante).
- La valeur R-squared qui indique la proportion de la variance des ventes expliquée par le modèle.
- Les valeurs p pour tester l'hypothèse nulle selon laquelle les coefficients sont égaux à zéro.

### Interprétation des résultats

Les coefficients nous indiquent comment les ventes changent en fonction des variations de la publicité et du prix. Par exemple, si le coefficient de `publicite` est 3, cela signifie qu'une augmentation de 1 unité de publicité est associée à une augmentation de 3 unités des ventes, toutes choses étant égales par ailleurs.

## Conclusion

Ajuster une régression linéaire avec `lm()` en R est un processus simple et efficace pour analyser les relations entre les variables. En comprenant les résultats du modèle, vous pouvez prendre des décisions éclairées basées sur vos données. N'hésitez pas à explorer davantage et à appliquer cette méthode à vos propres ensembles de données !

