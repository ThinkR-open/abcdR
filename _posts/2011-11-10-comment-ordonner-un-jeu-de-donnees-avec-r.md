---
ID: 638
post_title: >
  Comment ordonner un jeu de données avec
  R ?
author: Guillaume
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-ordonner-un-jeu-de-donnees-avec-r/
published: true
post_date: 2011-11-10 13:59:07
tags: [ ]
categories:
  - Transformation de données
---
Ici les données sont ordonnées par ligne mais cela fonctionne aussi par colonne<br /> <pre lang='rsplus'> <br />data(iris)<br />iris[order(iris[,5],decreasing=FALSE),] <br /></pre>