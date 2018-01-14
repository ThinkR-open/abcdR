---
ID: 2910
post_title: 'Comment supprimer des niveaux d&rsquo;un facteur ?'
author: Vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-supprimer-des-niveaux-dun-facteur/
published: true
post_date: 2013-10-23 12:04:36
tags: [ ]
categories:
  - manipulation de données
  - Transformation de données
---
Regarder ce code :<br /><br /><br /> <pre lang='rsplus'><br />ff &lt;- factor(c('AA', 'BA', 'CA'))<br />ff<br />#[1] AA BA CA<br />#Levels: AA BA CA<br />ff[1:2]<br />#[1] AA BA<br />#Levels: AA BA CA <br /></pre> <br /><br /><br />dans le code <strong> ff[1:2]</strong> on garde en memoire le niveau <strong>CA</strong>, parfois cela ne correspond pas a ce que l'on veut.<br /><br />une solution est d'utiliser cette ligne de code :<br /><br /> <pre lang='rsplus'><br /> ff[1:2, drop=TRUE] <br />#ou encore<br /> factor(ff[1:2]) <br /><br /></pre> <br /><br /><br /><br /><br />