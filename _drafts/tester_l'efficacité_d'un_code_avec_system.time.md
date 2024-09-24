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

Lorsqu'on écrit du code en R, il est souvent important de savoir combien de temps prend un certain morceau de code pour s'exécuter. Cela peut nous aider à identifier les goulets d'étranglement dans notre code et à optimiser nos algorithmes. Pour cela, R propose la fonction `system.time()`, qui permet de mesurer le temps d'exécution d'un code.

## Qu'est-ce que `system.time` ?

La fonction `system.time()` en R renvoie le temps d'exécution d'une expression. Elle retourne un objet qui contient trois valeurs : le temps CPU utilisé par le processus, le temps réel écoulé et le temps d'attente du système. Voici comment l'utiliser :

### Syntaxe

```r
system.time(expr)
```

- `expr` : l'expression dont vous souhaitez mesurer le temps d'exécution.

## Exemple concret

Imaginons que nous voulons mesurer le temps nécessaire pour calculer la somme des carrés des nombres de 1 à 1 000 000. Voici comment nous pourrions faire :

```r
# Mesurer le temps d'exécution
temps_execution <- system.time({
  somme_carrés <- sum((1:1000000)^2)
})

# Afficher le résultat
print(temps_execution)
print(somme_carrés)
```

### Explication du code

1. **Déclaration de la fonction `system.time()`** :
   - Nous enveloppons notre code de calcul dans les accolades `{}` pour que `system.time()` puisse mesurer le temps d'exécution de l'ensemble de l'expression.

2. **Calcul de la somme des carrés** :
   - Nous utilisons `1:1000000` pour créer une séquence de nombres de 1 à 1 000 000, puis nous élevons chaque nombre au carré avec `^2`, et enfin nous utilisons la fonction `sum()` pour obtenir la somme de ces carrés.

3. **Affichage des résultats** :
   - Après l'exécution, nous imprimons le temps d'exécution stocké dans `temps_execution` ainsi que le résultat de notre calcul, `somme_carrés`.

### Interprétation des résultats

Après avoir exécuté le code ci-dessus, vous obtiendrez un affichage qui ressemble à ceci :

```
   user      system     elapsed 
  0.123     0.003      0.126 
```

- **user** : temps CPU utilisé en mode utilisateur.
- **system** : temps CPU utilisé en mode système.
- **elapsed** : temps réel écoulé depuis le début jusqu'à la fin de l'exécution de l'expression.

Ces valeurs vous donneront une idée de l'efficacité de votre code. Par exemple, si le temps écoulé est élevé, cela peut indiquer que votre code nécessite des optimisations.

## Conclusion

Mesurer le temps d'exécution d'un code en R est une tâche simple grâce à `system.time()`. Cela vous permet d'identifier les parties de votre code qui pourraient être améliorées en termes d'efficacité. En utilisant cet outil, vous pouvez optimiser vos algorithmes et rendre vos analyses de données plus rapides et plus efficaces.

