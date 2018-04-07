---
ID: 1023
post_title: 'comment ouvrir une nouvelle fenêtre graphique dans R ? : x11'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-ouvrir-une-nouvelle-fenetre-graphique-dans-r-x11/
published: true
post_date: 2011-12-12 11:06:21
---
Par défaut, R n'utilise qu'une seule fenêtre graphique. Il efface alors les anciens graphiques quand on en génère un nouveau. Il faut utiliser <strong>x11()</strong> pour ouvrir une nouvelle fenêtre <pre><code><br />data(iris)<br />plot(iris)<br />x11()<br />plot(1:10)<br /></pre> <br /><br />Sous windows avec l'interface graphique par défaut, le nombre de fenêtres simultanées est limité a 65. Il faut donc faire attention.<br /><br />