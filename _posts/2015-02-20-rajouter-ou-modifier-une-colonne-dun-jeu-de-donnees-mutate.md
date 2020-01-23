---
ID: 3003
post_title: 'Rajouter ou modifier une colonne d&#039;un jeu de données : mutate'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/rajouter-ou-modifier-une-colonne-dun-jeu-de-donnees-mutate/
published: true
post_date: 2015-02-20 19:57:54
tags: [ ]
categories:
  - manipulation de données
---
La fonction <strong>mutate</strong> est plus rapide et plus pratique que la fonction <strong>transform</strong>. Elle permet en une seule instruction de créer plusieurs colonnes.<br /><br /> <pre><code><br />require(plyr)<br />data(iris)<br />  mutate(iris,colA=Sepal.Length * Sepal.Width ,colB=colA*3) <br /> <br /><br /></code></pre>