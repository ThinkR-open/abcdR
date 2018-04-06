---
ID: 2914
post_title: 'Comment rajouter une colonne à partir de colonne deja existante dans un jeu de donnée? : transform'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-rajouter-une-colonne-a-partir-de-colonne-deja-existante-dans-un-jeu-de-donnee-transform/
published: true
post_date: 2013-10-23 12:14:57
---
la fonction <strong>transform</strong> permet de contruire une nouvelle colonne et de la rajouter a un jeu de donnée.<br /><br /> <pre><br /> transform(iris,Sepal.surface=Sepal.Length * Sepal.Width) <br /></pre>