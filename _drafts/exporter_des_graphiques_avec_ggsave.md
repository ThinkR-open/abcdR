---
title: "Exporter des graphiques avec ggsave"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - exportation
    post_tag:
        - ggsave
        - exporter
---

# Exporter des graphiques avec ggsave en R

L'une des étapes importantes dans le processus de création de graphiques en R est l'exportation de ces graphiques dans un format approprié pour une utilisation ultérieure, que ce soit pour des rapports, des présentations ou des publications. La fonction `ggsave()` du package `ggplot2` est un outil puissant et simple pour réaliser cette tâche. 

## Qu'est-ce que `ggsave()` ?

La fonction `ggsave()` permet d'enregistrer les graphiques créés avec le package `ggplot2` dans différents formats, tels que PNG, JPEG, PDF, et d'autres. Cette fonction prend en entrée le graphique que vous souhaitez sauvegarder, ainsi que divers paramètres pour personnaliser la sortie.

## Syntaxe de base

La syntaxe générale de `ggsave()` est la suivante :

```R
ggsave(filename, plot = last_plot(), device = "png", path = NULL, 
       scale = 1, width = NA, height = NA, units = "in", dpi = 300, ...)
```

- `filename` : le nom du fichier dans lequel le graphique sera enregistré.
- `plot` : le graphique à sauvegarder (par défaut, il sauvegarde le dernier graphique créé).
- `device` : le type de fichier (format) à utiliser.
- `path` : le chemin du répertoire dans lequel enregistrer le fichier.
- `width`, `height` : dimensions du graphique.
- `units` : les unités utilisées pour les dimensions (par exemple, "in" pour pouces, "cm" pour centimètres).
- `dpi` : la résolution du graphique.

## Exemple concret

Prenons un exemple simple où nous allons créer un graphique de dispersion et l'exporter en tant que fichier PNG.

```R
# Charger le package ggplot2
library(ggplot2)

# Créer un jeu de données simple
data <- data.frame(
  x = rnorm(100),
  y = rnorm(100)
)

# Créer un graphique de dispersion
scatter_plot <- ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  labs(title = "Graphique de dispersion", x = "Axe X", y = "Axe Y")

# Afficher le graphique
print(scatter_plot)

# Exporter le graphique avec ggsave
ggsave("scatter_plot.png", plot = scatter_plot, width = 8, height = 6, dpi = 300)
```

### Explications du code

1. **Charger le package** : Nous commençons par charger le package `ggplot2`, qui est nécessaire pour créer des graphiques.
2. **Créer un jeu de données** : Nous générons un jeu de données aléatoire avec 100 points pour les axes X et Y.
3. **Créer le graphique** : Nous utilisons `ggplot()` pour créer un graphique de dispersion avec des points (`geom_point()`), en ajoutant des titres pour le graphique et les axes.
4. **Afficher le graphique** : `print(scatter_plot)` affiche le graphique à l'écran.
5. **Exporter le graphique** : Enfin, nous utilisons `ggsave()` pour enregistrer le graphique sous le nom "scatter_plot.png" avec une largeur de 8 pouces, une hauteur de 6 pouces et une résolution de 300 DPI.

## Conclusion

La fonction `ggsave()` est un outil essentiel pour exporter vos graphiques en R. Que ce soit pour des présentations ou des publications, elle vous permet de sauvegarder vos visualisations de manière simple et efficace. N'hésitez pas à explorer les différentes options qu'elle offre pour adapter vos graphiques à vos besoins !

