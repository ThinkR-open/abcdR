---
title: "Filtrer des valeurs uniques avec unique"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - filtrage
    post_tag:
        - unique
        - filtre
---

# Filtrer des valeurs uniques avec la fonction `unique()` en R

Dans le langage R, il est fréquent de travailler avec des ensembles de données qui contiennent des valeurs répétées. Pour analyser ces données de manière efficace, il est souvent nécessaire d'extraire les valeurs uniques. La fonction `unique()` est un outil simple et puissant pour accomplir cette tâche.

## Qu'est-ce que la fonction `unique()` ?

La fonction `unique()` permet de retourner un vecteur, une matrice ou un data frame en ne conservant que les valeurs uniques. Cela signifie que toutes les occurrences d'une valeur répétée seront réduites à une seule occurrence.

## Exemple concret

Imaginons que nous avons un vecteur contenant des noms d'animaux, certains d'entre eux étant répétés. Nous allons utiliser la fonction `unique()` pour extraire les noms d'animaux uniques.

### Code R

Voici un exemple de code R qui illustre l'utilisation de `unique()` :

```r
# Création d'un vecteur avec des valeurs répétées
animaux <- c("chat", "chien", "oiseau", "chat", "poisson", "chien", "lapin")

# Affichage du vecteur original
print("Vecteur original :")
print(animaux)

# Filtrage des valeurs uniques
animaux_uniques <- unique(animaux)

# Affichage des valeurs uniques
print("Valeurs uniques :")
print(animaux_uniques)
```

### Explications du code

1. **Création du vecteur** : Nous commençons par créer un vecteur `animaux` qui contient plusieurs noms d'animaux, avec des répétitions.
   
2. **Affichage du vecteur original** : Nous utilisons `print()` pour afficher le vecteur initial afin de voir les valeurs avant le filtrage.

3. **Filtrage des valeurs uniques** : Nous appliquons la fonction `unique(animaux)` pour obtenir un nouveau vecteur `animaux_uniques` qui ne contient que les noms d'animaux uniques.

4. **Affichage des valeurs uniques** : Enfin, nous affichons le vecteur des valeurs uniques.

### Résultat attendu

Lorsque vous exécutez ce code, vous devriez obtenir le résultat suivant :

```
Vecteur original :
[1] "chat"    "chien"   "oiseau"  "chat"    "poisson" "chien"   "lapin"  
Valeurs uniques :
[1] "chat"    "chien"   "oiseau"  "poisson" "lapin"  
```

## Conclusion

La fonction `unique()` est un outil essentiel pour le traitement des données en R. Elle permet de simplifier l'analyse en éliminant les doublons et en fournissant une vue claire des valeurs distinctes. Que vous travailliez avec des vecteurs, des matrices ou des data frame, `unique()` vous aidera à obtenir les informations dont vous avez besoin de manière efficace. N'hésitez pas à l'utiliser dans vos propres analyses de données !

