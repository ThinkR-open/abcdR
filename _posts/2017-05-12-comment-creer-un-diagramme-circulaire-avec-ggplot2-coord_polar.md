---
ID: 3400
post_title: >
  Comment créer un diagramme circulaire
  avec ggplot2 ? coord_polar()
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-creer-un-diagramme-circulaire-avec-ggplot2-coord_polar/
published: true
post_date: 2017-05-12 10:19:28
---
<p>Vous en avez assez des digrammes en barres et des lignes ? Alors laissez-vous tenter par les diagrammes circulaires !
<p>Pour<strong> transformer votre graphe en diagramme circulaire</strong>, ajoutez l'argument <em>coord_polar()</em> à votre ggplot !
<p><pre>library(ggplot2)
data(diamonds)
ggplot(diamonds, aes(cut)) +
  geom_bar() +
  coord_polar()</pre>