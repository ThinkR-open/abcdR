---
ID: 3382
post_title: 'Comment changer l&#039;emplacement de la légende avec ggplot2 ? theme(legend.position)'
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-changer-lemplacement-de-la-legende-sur-ggplot2-themelegend-position/
published: true
post_date: 2017-05-10 13:58:59
tags: [ ]
categories:
  - graphique
  - tidyverse
---
Vous n'avez plus envie de voir vos légendes sur la droite ? Vous mourrez d'envie de pouvoir <strong>personnaliser encore plus votre graphique</strong> ? Faites appel à la fonction <em>theme()</em>, et à son argument<em> legend.position</em> — ce dernier vous permet de placer la légende sur le bord que vous désirez.
<pre><code>library(ggplot2)
data("iris")
ggplot(iris, aes(x= Sepal.Length, y = Sepal.Width, col = Species)) +
  geom_point() +
  theme(legend.position = "bottom")</code></pre>
Les cinq arguments possibles sont les quatre bords, ainsi que la position <em>none</em>, pour faire disparaitre la légende.
<pre><code>theme(legend.position = "left")
theme(legend.position = "right")
theme(legend.position = "bottom")
theme(legend.position = "top")
theme(legend.position = "none")</code></pre>