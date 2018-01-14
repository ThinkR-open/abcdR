---
ID: 1026
post_title: >
  Comment fermer une fenêtre graphique
  dans R ? dev.off
author: anonyme
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-fermer-une-fenetre-graphique-dans-r-dev.off/
published: true
post_date: 2011-12-12 11:06:21
tags: [ ]
categories:
  - graphique
---
Pour fermer la dernière fenêtre vous pouvez utiliser <strong>dev.off()</strong> <pre lang='rsplus'><br /><p>data(iris)<br />plot(iris)<br />plot(1:10)<br />dev.off() # ferme le dernier graphique</p></pre>