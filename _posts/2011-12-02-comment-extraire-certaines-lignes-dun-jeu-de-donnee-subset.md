---
ID: 935
post_title: 'Comment extraire certaines lignes d&rsquo;un jeu de donnée? : subset'
author: Vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-extraire-certaines-lignes-dun-jeu-de-donnee-subset/
published: true
post_date: 2011-12-02 12:00:01
---
Il peut être utile de ne sélectionner que quelques individus dans un jeu de données. La fonction subset permet de faire de l'extraction de données de manière très propre !<br /><br /><br /> <pre lang='rsplus'><br />data(iris)<br />subset(iris,Petal.Length&lt;1.5)# on ne sélectionne que les individus avec Petal.Length&lt;1.5 <br /> </pre> <br /><br /><br />