---
ID: 3249
post_title: 'Comment fabriquer une formule à partir d’une chaine de caractères? : as.formula()'
author: anonyme
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-fabriquer-une-formule-a-partir-dune-chaine-de-caracteres-as-formula/
published: true
post_date: 2016-04-19 08:33:18
---
la fonction <strong>as.formula </strong>permet de fabriquer une formule à partir d 'une chaine de caractères<br /> <pre lang='rsplus'><p>data(iris)</p><p>chaine&lt;-paste0(names(iris)[1],</p><p>" ~ ",paste(names(iris)[-1],collapse=" + "))</p><p>as.formula(chaine)</p><p>lm(as.formula(chaine),data=iris)</p></pre>