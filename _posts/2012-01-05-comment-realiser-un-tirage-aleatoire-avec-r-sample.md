---
ID: 1178
post_title: >
  Comment réaliser un tirage aléatoire
  avec R? sample
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-realiser-un-tirage-aleatoire-avec-r-sample/
published: true
post_date: 2012-01-05 17:36:56
tags: [ ]
categories:
  - fonctions utiles
---
La fonction <strong>sample</strong> permet de tirer, avec ou sans remise, un certain nombre d'éléments dans un vecteur. <pre><code><br /> sample(1:10,1) # on tire une valeur au hasard entre 1 et 10<br /> sample(1:10,3) # on en tire 3<br /> sample(1:10,10)# on en tire 10.. en pratique on mélange les 10 éléments <br /><br /><br /><p>sample(1:10,3,replace = T)# on en tire 3 parmi 10.. avec remise ( on peut très bien avoir c(7,7,2) )<br /><br /></code></pre> <br /><br />On peut aussi noter le paramètre <strong>prob</strong> qui permet de définir la probabilité de chaque élément d'être tiré au hasard.</p>