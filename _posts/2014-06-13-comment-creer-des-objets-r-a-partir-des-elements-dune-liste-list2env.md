---
ID: 2977
post_title: 'Comment creer des objets R à partir des élements d&#039;une liste ? list2env'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-creer-des-objets-r-a-partir-des-elements-dune-liste-list2env/
published: true
post_date: 2014-06-13 22:27:35
tags: [ ]
categories:
  - fonctions utiles
---
Voici une fonction qui ne devrait pas être utile à beaucoup de personne, mais qui fera très plaisirs à ceux qui veulent generer automatiquement des objets R <br /><br /><br /> <pre><code><br />data(iris)<br /> dflist &lt;- split(iris, iris[,5])<br />list2env(dflist, envir = .GlobalEnv)<br />ls() <br /></code></pre> <br /><br />Chacun des element de dflist deviennent des objets dans l'environnement courant de R.