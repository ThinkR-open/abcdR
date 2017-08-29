---
ID: 769
post_title: 'Comment afficher le code source d&rsquo;une fonction dans R?'
author: anonyme
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-afficher-le-code-source-dune-fonction-dans-r/
published: true
post_date: 2011-11-15 09:51:19
---
Les packages contiennent un certain nombre de fonctions. Il peut être intéressant de voir comment elles sont codées, pour les comprendre ou les améliorer par exemple.<br /><br /><br /> <pre lang='rsplus'><br />#il suffit de taper son nom<br />lm  # affiche le code source de la fontion lm<br />page(lm) # affiche une nouvelle fenêtre avec le code source bien mis en forme (avec indentation)<br />dput(lm, control = "useSource") # permet de voir les commentaires s'il y en a, en pratique page utilise dput<br />page(lm, control = "useSource") # cela fonctionne donc aussi.<br /></pre>