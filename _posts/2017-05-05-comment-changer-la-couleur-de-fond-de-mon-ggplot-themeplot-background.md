---
ID: 3353
post_title: >
  Comment changer la couleur de fond de
  mon ggplot ? theme(plot.background =)
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-changer-la-couleur-de-fond-de-mon-ggplot-themeplot-background/
published: true
post_date: 2017-05-05 09:24:02
---
Pour modifier la couleur de fond de votre graphique avec ggplot, utilisez l'argument suivant dans votre theme() :
<pre><code>
library(ggplot2)
ggplot(iris, aes(Sepal.Width, Sepal.Length)) +
  geom_point() +
  theme(plot.background = element_rect(fill = "pink"))</pre>