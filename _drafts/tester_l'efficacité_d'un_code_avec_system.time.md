---
title: "Tester l'efficacité d'un code avec system.time"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - performance
    post_tag:
        - system.time
        - efficacité
---

# Tester l'efficacité d'un code avec `system.time` en R

Lorsque nous écrivons du code en R, il est souvent important de s'assurer que notre code s'exécute efficacement, surtout lorsque nous travaillons avec de grandes quantités de données ou des algorithmes complexes. Une des manières les plus simples de mesurer le temps d'exécution d'un morceau de code en R est d'utiliser la fonction `system.time()`.

## Qu'est-ce que `system.time()` ?

La fonction `system.time()` mesure le temps nécessaire pour exécuter une expression R. Elle retourne un objet de type `proc_time`, qui contient trois valeurs :

- **user** : le temps CPU utilisé par le processus utilisateur.
- **system** : le temps CPU utilisé par le système.
- **elapsed** : le temps réel écoulé (temps d'exécution total).

## Exemple concret

Prenons un exemple simple où nous allons mesurer le temps nécessaire pour calculer la somme des carrés des nombres de 1 à 1 000 000.

### Code R

```r
# Définir une fonction pour calculer la somme des carrés
somme_carres <- function(n) {
  sum((1:n)^2)
}

# Mesurer le temps d'exécution de la fonction
temps_execution <- system.time({
  resultat <- somme_carres(1000000)
})

# Afficher le résultat et le temps d'exécution
print(paste("La somme des carrés de 1 à 1 000 000 est :", resultat))
print(temps_execution)
```

### Explications

1. **Définition de la fonction** : Nous avons défini une fonction `somme_carres` qui prend un nombre `n` et calcule la somme des carrés des nombres de 1 à `n`.

2. **Mesure du temps d'exécution** : Nous utilisons `system.time()` pour mesurer le temps que prend l'exécution de la fonction `somme_carres(1000000)`. Le code à l'intérieur des accolades `{}` est celui dont nous voulons mesurer le temps d'exécution.

3. **Affichage des résultats** : Après l'exécution, nous affichons le résultat de la somme ainsi que le temps d'exécution. Le temps d'exécution est un objet qui contient les trois valeurs mentionnées précédemment.

## Conclusion

Utiliser `system.time()` est une méthode efficace pour évaluer la performance de votre code en R. Cela vous permet d'identifier les parties de votre code qui pourraient être optimisées pour améliorer l'efficacité. N'hésitez pas à l'utiliser lors de vos prochaines analyses de données pour garantir que votre code fonctionne de manière optimale.

