---
ID: 1026
post_title: >
  Comment fermer une fenêtre graphique
  dans R ? dev.off
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-fermer-une-fenetre-graphique-dans-r-dev-off/
published: true
post_date: 2011-12-12 11:06:21
---
Pour fermer la dernière fenêtre vous pouvez utiliser <strong>dev.off()</strong> <pre><code><br /><p>data(iris)<br />plot(iris)<br />plot(1:10)<br />dev.off() # ferme le dernier graphique</p></pre>