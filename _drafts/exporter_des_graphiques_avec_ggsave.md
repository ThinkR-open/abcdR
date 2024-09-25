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

Lorsque vous créez des graphiques avec le package `ggplot2` en R, il est souvent nécessaire de les exporter pour les utiliser dans des rapports, des présentations ou des publications. La fonction `ggsave()` est un outil pratique pour cela. Dans cet article, nous allons explorer comment utiliser `ggsave()` pour sauvegarder vos graphiques.

## Installation et chargement des packages

Avant de commencer, assurez-vous d'avoir installé et chargé le package `ggplot2`. Si vous ne l'avez pas encore fait, vous pouvez l'installer avec la commande suivante :

```R
install.packages("ggplot2")
```

Ensuite, chargez le package :

```R
library(ggplot2)
```

## Création d'un graphique simple

Pour illustrer l'utilisation de `ggsave()`, créons un graphique simple. Imaginons que nous avons un jeu de données sur les ventes de voitures :

```R
# Création d'un jeu de données
data <- data.frame(
  Marque = c("Toyota", "Ford", "BMW", "Honda"),
  Ventes = c(200, 150, 100, 180)
)

# Création d'un graphique
graphique <- ggplot(data, aes(x = Marque, y = Ventes)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Ventes de voitures par marque", x = "Marque", y = "Ventes")
```

## Exportation du graphique avec ggsave()

Une fois que vous avez créé votre graphique, vous pouvez l'exporter en utilisant `ggsave()`. Cette fonction permet de sauvegarder le dernier graphique affiché ou un graphique spécifique. Voici comment procéder :

```R
# Exportation du graphique au format PNG
ggsave("ventes_voitures.png", plot = graphique, width = 8, height = 6, dpi = 300)
```

### Explications des arguments de ggsave()

- **"ventes_voitures.png"** : C'est le nom du fichier dans lequel le graphique sera sauvegardé. Vous pouvez également utiliser d'autres formats comme `.pdf`, `.jpeg`, etc.
- **plot = graphique** : Cet argument spécifie quel graphique vous souhaitez sauvegarder. Si vous omettez cet argument, `ggsave()` sauvegardera le dernier graphique affiché.
- **width = 8** et **height = 6** : Ces paramètres définissent la largeur et la hauteur du graphique en pouces.
- **dpi = 300** : Cela définit la résolution du graphique. Une valeur de 300 dpi est généralement suffisante pour une impression de haute qualité.

## Conclusion

Exporter des graphiques avec `ggsave()` est un processus simple et efficace. Que vous souhaitiez créer des graphiques pour des rapports ou des présentations, cette fonction vous permet de sauvegarder vos visualisations dans différents formats et avec des spécifications adaptées à vos besoins. N'hésitez pas à expérimenter avec les paramètres pour obtenir le meilleur rendu pour vos graphiques !

