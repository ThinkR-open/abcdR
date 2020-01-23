---
ID: 1062
post_title: >
  Comment afficher la palette de couleur ?
  palette
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-afficher-la-palette-palette/
published: true
post_date: 2011-12-15 19:23:22
tags: [ ]
categories:
  - graphique
---
La palette correspond à l'ensemble des couleurs actives.<br /><br />Vous pouvez l'afficher et la modifier avec la fonction palette()<br /><br /> <pre><code><br />palette()<br /> </code></pre> <br /><br />Il existe de nombreuses palettes prédéfinies : hsv(), gray(), rainbow(), heat.colors(), terrain.colors(), topo.colors(), cm.colors().<br />Vous pouvez ainsi modifier la palette :<br /><br /> <pre><code><br />palette(gray(1:10/10))<br />palette()<br /> </code></pre> <br /><br />Enfin il existe des librairies comme RColorBrewer qui permettent d'utiliser différentes palettes adaptées à divers graphiques.