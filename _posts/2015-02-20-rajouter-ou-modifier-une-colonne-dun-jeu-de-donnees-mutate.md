---
ID: 3003
post_title: 'Rajouter ou modifier une colonne d&rsquo;un jeu de données : mutate'
author: Vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/rajouter-ou-modifier-une-colonne-dun-jeu-de-donnees-mutate/
published: true
post_date: 2015-02-20 19:57:54
---
La fonction <strong>mutate</strong> est plus rapide et plus pratique que la fonction <strong>transform</strong>. Elle permet en une seule instruction de créer plusieurs colonnes.<br /><br /> <pre lang='rsplus'><br />require(plyr)<br />data(iris)<br />  mutate(iris,colA=Sepal.Length * Sepal.Width ,colB=colA*3) <br /> <br /><br /></pre>