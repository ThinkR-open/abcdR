---
title: "Personnaliser le style de R Markdown avec CSS"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - style
    post_tag:
        - R Markdown
        - CSS
---

# Personnaliser le style de R Markdown avec CSS

R Markdown est un outil puissant pour créer des documents dynamiques qui combinent du code, des résultats d'analyse et du texte. Une des fonctionnalités intéressantes de R Markdown est la possibilité de personnaliser le style de vos documents en utilisant des feuilles de style CSS (Cascading Style Sheets). Cet article vous montrera comment intégrer et utiliser CSS dans un document R Markdown pour améliorer l'apparence de vos rapports.

## Étape 1 : Créer un document R Markdown

Pour commencer, ouvrez RStudio et créez un nouveau fichier R Markdown. Vous pouvez le faire en sélectionnant `File` > `New File` > `R Markdown...`. Donnez un titre à votre document et choisissez un format de sortie, par exemple HTML.

Voici un exemple de contenu de base pour un fichier R Markdown :

```markdown
---
title: "Mon Document Personnalisé"
author: "Votre Nom"
date: "`r Sys.Date()`"
output: html_document
---

# Introduction

Ceci est mon document R Markdown. Je vais le personnaliser avec du CSS.
```

## Étape 2 : Créer un fichier CSS

Ensuite, créez un fichier CSS qui contiendra vos styles personnalisés. Vous pouvez créer un nouveau fichier dans RStudio en sélectionnant `File` > `New File` > `Text File` et en le nommant par exemple `styles.css`.

Voici un exemple de styles CSS simples que vous pouvez ajouter dans ce fichier :

```css
body {
    font-family: Arial, sans-serif;
    color: #333;
}

h1 {
    color: #0072B2;
}

h2 {
    color: #D55E00;
}

p {
    line-height: 1.6;
}
```

Dans cet exemple, nous avons défini des styles pour le corps du texte, les titres H1 et H2, et les paragraphes. Vous pouvez ajuster ces styles selon vos préférences.

## Étape 3 : Lier le fichier CSS à votre document R Markdown

Pour appliquer les styles définis dans votre fichier CSS, vous devez lier ce fichier à votre document R Markdown. Vous pouvez le faire en ajoutant une ligne sous l'option `output` dans l'en-tête YAML de votre document :

```markdown
---
title: "Mon Document Personnalisé"
author: "Votre Nom"
date: "`r Sys.Date()`"
output: 
  html_document:
    css: styles.css
---
```

## Étape 4 : Générer le document

Une fois que vous avez lié votre fichier CSS, vous pouvez générer votre document en cliquant sur le bouton `Knit` dans RStudio. Cela créera un fichier HTML où vos styles personnalisés seront appliqués.

## Conclusion

En utilisant CSS avec R Markdown, vous pouvez facilement personnaliser l'apparence de vos documents. Que ce soit pour changer les polices, les couleurs ou l'espacement, CSS vous donne une grande flexibilité. Essayez d'ajouter vos propres styles pour voir comment vous pouvez améliorer vos rapports R Markdown !

N'oubliez pas que vous pouvez toujours consulter la documentation officielle de R Markdown pour plus d'options et de styles. Bonne personnalisation !

