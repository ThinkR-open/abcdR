---
ID: 1023
post_title: 'Comment ouvrir une nouvelle fenêtre graphique dans R ? : x11'
author: anonyme
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-ouvrir-une-nouvelle-fenetre-graphique-dans-r-x11/
published: true
post_date: 2011-12-12 11:06:21
tags: [ ]
categories:
  - graphique
---
Par défaut, R n'utilise qu'une seule fenêtre graphique. Il efface alors les anciens graphiques quand on en génère un nouveau. Il faut utiliser <strong>x11()</strong> pour ouvrir une nouvelle fenêtre <pre lang='rsplus'><br />data(iris)<br />plot(iris)<br />x11()<br />plot(1:10)<br /></pre> <br /><br />Sous windows avec l'interface graphique par défaut, le nombre de fenêtres simultanées est limité a 65. Il faut donc faire attention.<br /><br />