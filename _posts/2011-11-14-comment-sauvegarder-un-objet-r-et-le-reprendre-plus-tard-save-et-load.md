---
ID: 749
post_title: 'Comment sauvegarder un objet R et le reprendre plus tard ? : save et load'
author: Vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-sauvegarder-un-objet-r-et-le-reprendre-plus-tard-save-et-load/
published: true
post_date: 2011-11-14 21:42:06
tags: [ ]
categories:
  - exportation de données
  - fonctions utiles
---
Save et load permettent respectivement de sauvegarder dans un fichier et de restaurer des objets R.<br />En pratique save et load servent tout particulièrement  à enregistrer un environnement de travail.<br /><br /> <pre lang='rsplus'><br /><br /> rm(list=ls(all=TRUE)) <br /> ls()# la mémoire est vide<br /> a&lt;-5<br /> data(iris)<br /> b&lt;- matrix(5,5,5) <br /> save(a,b,iris,file="fichier") # il faut bien penser à préciser le file=<br /> rm(list=ls(all=TRUE)) <br /> ls()# la mémoire est vide <br /> load("fichier")<br /> ls() # on a retrouvé a , b et iris<br /><br /><br /><br /></pre> <br /><br />Attention les objets chargés, s'il ont le même nom qu'un objet existant prendront leur place, effaçant l'objet déjà présent :<br /><br /> <pre lang='rsplus'><br /> rm(list=ls(all=TRUE)) <br /> a&lt;-5<br /> save(a,file="fichier")<br /> a&lt;-3<br /> load("fichier")<br /> a # a vaut maintenant 5<br /> </pre>