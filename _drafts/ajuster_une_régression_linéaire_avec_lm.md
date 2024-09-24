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

La régression linéaire est une méthode statistique utilisée pour modéliser la relation entre une variable dépendante (ou réponse) et une ou plusieurs variables indépendantes (ou explicatives). Dans cet article, nous allons voir comment ajuster un modèle de régression linéaire en utilisant la fonction `lm()` de R, avec un exemple concret.

## Qu'est-ce que la régression linéaire ?

La régression linéaire cherche à établir une relation linéaire entre les variables. Par exemple, nous pouvons vouloir prédire le poids d'une personne en fonction de sa taille. La formule de la régression linéaire simple est :

\[ y = \beta_0 + \beta_1 x + \epsilon \]

où :
- \( y \) est la variable dépendante (poids),
- \( x \) est la variable indépendante (taille),
- \( \beta_0 \) est l'ordonnée à l'origine,
- \( \beta_1 \) est le coefficient de régression,
- \( \epsilon \) est l'erreur.

## Exemple concret

Imaginons que nous avons un jeu de données contenant des informations sur la taille et le poids de plusieurs individus. Voici comment nous pourrions ajuster un modèle de régression linéaire en utilisant R.

### Étape 1 : Créer un jeu de données

Commençons par créer un jeu de données fictif :

```r
# Création d'un jeu de données
taille <- c(150, 160, 165, 170, 175, 180, 185)
poids <- c(50, 60, 65, 70, 75, 80, 85)

donnees <- data.frame(taille, poids)
```

### Étape 2 : Ajuster le modèle de régression linéaire

Utilisons maintenant la fonction `lm()` pour ajuster notre modèle :

```r
# Ajustement du modèle de régression linéaire
modele <- lm(poids ~ taille, data = donnees)

# Affichage du résumé du modèle
summary(modele)
```

### Étape 3 : Interpréter les résultats

Le résumé du modèle (produit par `summary(modele)`) nous donnera plusieurs informations, dont :

- Les coefficients du modèle (intercept et pente).
- La valeur R-squared qui indique la proportion de la variance des poids expliquée par la taille.
- Les p-values qui indiquent si les coefficients sont significativement différents de zéro.

### Étape 4 : Faire des prédictions

Une fois le modèle ajusté, nous pouvons l'utiliser pour faire des prédictions. Par exemple, si nous voulons prédire le poids d'une personne de 172 cm :

```r
# Prédiction pour une taille de 172 cm
nouvelle_taille <- data.frame(taille = 172)
predictions <- predict(modele, nouvelle_taille)

# Affichage de la prédiction
print(predictions)
```

## Conclusion

Ajuster une régression linéaire avec la fonction `lm()` en R est un processus simple et puissant pour comprendre les relations entre les variables. Grâce à cet article, vous avez maintenant les bases pour créer votre propre modèle de régression linéaire et faire des prédictions. N'hésitez pas à explorer davantage et à appliquer cette méthode à vos propres données !

