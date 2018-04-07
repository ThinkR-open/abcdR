---
ID: 3406
post_title: >
  Comment rédiger avec RMarkdown ?
  Quelques commandes utiles
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/redaction-markdown/
published: true
post_date: 2017-05-16 07:53:59
---
<p>Vous souhaitez <strong>rédiger des documents qui contiennent du code, des résultats de console ou des graphiques</strong> ? Alors Mardown est fait pour vous !
<p>Langage HTML simplifié, Markdown est <strong>idéal pour communiquer, à toutes les étapes de votre analyse de données</strong>. Carnets de notes pour vous, outils de transmission à vos collègues, ou encore bilans d'analyse à destination d'un grand public, les documents Markdown sont un véritable atouts, à mettre dans la besace de tous les utilisateurs de R. Et pour cause, sa simplicité va vous bluffer !
<p>Pour créer un nouveau document en RMarkdown, rendez-vous sur l'onglet "File / New File" de RStudio. Puis, sélectionnez "R Markdown". Dans cette nouvelle fenêtre, vous pouvez <strong>rédiger votre présentation</strong>, en suivant les conventions de balisage suivantes :
<p><pre><code> # Titre de niveau 1
## Titre de niveau 2
### Titre de niveau 3
#### Titre de niveau 4
_Un texte en italique_
__Un texte en gras__
[Un lien vers](www.ce-site.com)
![Une image située](à/cet/emplacement.png)
&gt; Une citation
* Une liste
* avec plusieurs items
 + et des sous-items
```{r}
Une portion de code R
```
</pre>
<p>Et pour en savoir plus sur les commandes, rendez-vous sur la <a href="https://www.rstudio.com/wp-content/uploads/2015/03/rmarkdown-reference.pdf" target="_blank">Cheatsheet officielle</a> !