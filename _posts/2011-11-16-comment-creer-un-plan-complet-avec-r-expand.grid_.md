---
ID: 782
post_title: 'Comment créer un plan complet avec R ? : expand.grid'
author: anonyme
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-creer-un-plan-complet-avec-r-expand.grid/
published: true
post_date: 2011-11-16 09:23:50
tags: [ ]
categories:
  - fonctions utiles
  - manipulation de données
  - Transformation de données
---
On a parfois besoin d'un jeux de données qui reprend toutes les combinaisons possibles de plusieurs facteurs.<br />Bien sûr on peut le faire à la main, mais il y a beaucoup plus intelligent : la fonction expand.grid fait ça très bien.<br /><br /> <pre lang='rsplus'> expand.grid(c("voiture","velo"),c("bleue","rouge","vert"),c("mercedes","peugeot")) </pre> <br />Cette commande permet de générer toutes les combinaisons possibles : voiture bleue mercedes, voiture bleue peugeot...<br /><br /><br />