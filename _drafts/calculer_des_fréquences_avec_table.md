---
title: "Calculer des fréquences avec table"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - statistiques
    post_tag:
        - table
        - fréquence
---

# Calculer des Fréquences avec la Fonction `table` en R

Dans le domaine de l'analyse de données, il est souvent nécessaire de comprendre la distribution des valeurs d'une variable. Une manière simple et efficace de le faire est d'utiliser la fonction `table` en R, qui permet de calculer les fréquences des différentes valeurs d'un vecteur.

## Qu'est-ce que la fonction `table` ?

La fonction `table` crée un tableau de contingence qui montre le nombre d'occurrences de chaque valeur unique dans un vecteur. Cela est particulièrement utile pour les variables catégorielles, mais peut également être utilisé pour des données numériques.

## Exemple Pratique

Imaginons que nous avons un vecteur représentant les couleurs préférées de 10 personnes. Voici comment nous pouvons utiliser la fonction `table` pour calculer les fréquences de chaque couleur.

### Étape 1 : Créer un vecteur

Tout d'abord, nous allons créer un vecteur contenant les couleurs préférées :

```R
# Création du vecteur des couleurs préférées
couleurs <- c("Rouge", "Bleu", "Vert", "Rouge", "Jaune", "Bleu", "Rouge", "Vert", "Jaune", "Bleu")
```

### Étape 2 : Calculer les fréquences

Ensuite, nous allons utiliser la fonction `table` pour calculer les fréquences de chaque couleur :

```R
# Calcul des fréquences
frequences <- table(couleurs)
```

### Étape 3 : Afficher les résultats

Enfin, nous pouvons afficher les résultats pour voir combien de fois chaque couleur apparaît :

```R
# Affichage des fréquences
print(frequences)
```

### Résultat attendu

Lorsque vous exécutez le code ci-dessus, vous devriez obtenir une sortie similaire à ceci :

```
couleurs
 Bleu Jaune Rouge  Vert 
    3     2     3     2 
```

Cela signifie que la couleur "Bleu" apparaît 3 fois, "Jaune" 2 fois, "Rouge" 3 fois et "Vert" 2 fois dans notre vecteur.

## Conclusion

La fonction `table` en R est un outil puissant et simple pour calculer les fréquences des valeurs dans un vecteur. Que vous travailliez avec des données catégorielles ou numériques, elle vous permet d'obtenir rapidement un aperçu de la distribution de vos données. N'hésitez pas à l'utiliser dans vos propres analyses pour mieux comprendre vos ensembles de données !

