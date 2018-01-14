---
ID: 3254
post_title: >
  Initialiser un dataframe vide avec des
  noms de colonne
author: anonyme
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/initialiser-un-dataframe-vide-avec-des-noms-de-colonne/
published: true
post_date: 2016-05-17 10:53:22
tags: [ ]
categories:
  - fonctions utiles
---
Parfois il peut etre utilise de fabriquer un data.frame vide, sans aucune ligne, mais avec des colonnes définies. Voici une facon de procéder.<br /><br /> <pre lang='rsplus'><br /><br /><p>BDD &lt;- as.data.frame(setNames(replicate(5,numeric(0), simplify = F),c("moy","p","val","r2","err") ))</p></pre>