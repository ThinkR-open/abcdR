---
title: "Générer des nombres aléatoires avec runif et rnorm"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - génération de données
    post_tag:
        - runif
        - aléatoire
---

# Générer des Nombres Aléatoires en R avec runif et rnorm

La génération de nombres aléatoires est une tâche courante en statistique et en programmation. En R, deux fonctions populaires pour générer des nombres aléatoires sont `runif` et `rnorm`. Cet article vous expliquera comment utiliser ces fonctions avec des exemples concrets.

## 1. Générer des Nombres Aléatoires Uniformément Distribués avec runif

La fonction `runif` génère des nombres aléatoires selon une distribution uniforme. Cela signifie que chaque nombre dans un intervalle donné a la même probabilité d'être choisi.

### Syntaxe de runif

```R
runif(n, min = 0, max = 1)
```

- `n` : le nombre de valeurs à générer.
- `min` : la valeur minimale de l'intervalle (par défaut 0).
- `max` : la valeur maximale de l'intervalle (par défaut 1).

### Exemple d'utilisation de runif

Voici un exemple où nous générons 10 nombres aléatoires uniformément distribués entre 1 et 100 :

```R
# Générer 10 nombres aléatoires uniformément distribués entre 1 et 100
nombres_uniformes <- runif(10, min = 1, max = 100)
print(nombres_uniformes)
```

Dans cet exemple, `nombres_uniformes` contiendra 10 valeurs aléatoires comprises entre 1 et 100.

## 2. Générer des Nombres Aléatoires Normalement Distribués avec rnorm

La fonction `rnorm` génère des nombres aléatoires selon une distribution normale (ou gaussienne). Cela signifie que la majorité des valeurs se concentrent autour de la moyenne, avec une diminution progressive des valeurs à mesure que l'on s'éloigne de celle-ci.

### Syntaxe de rnorm

```R
rnorm(n, mean = 0, sd = 1)
```

- `n` : le nombre de valeurs à générer.
- `mean` : la moyenne de la distribution (par défaut 0).
- `sd` : l'écart type de la distribution (par défaut 1).

### Exemple d'utilisation de rnorm

Voici un exemple où nous générons 10 nombres aléatoires normalement distribués avec une moyenne de 50 et un écart type de 10 :

```R
# Générer 10 nombres aléatoires normalement distribués avec une moyenne de 50 et un écart type de 10
nombres_normaux <- rnorm(10, mean = 50, sd = 10)
print(nombres_normaux)
```

Dans cet exemple, `nombres_normaux` contiendra 10 valeurs qui suivent une distribution normale centrée autour de 50.

## Conclusion

La génération de nombres aléatoires est essentielle pour de nombreuses applications en statistique et en simulation. Avec `runif` et `rnorm`, vous pouvez facilement créer des échantillons de données selon des distributions uniformes ou normales. N'hésitez pas à expérimenter avec ces fonctions pour mieux comprendre leur fonctionnement et leurs applications.

