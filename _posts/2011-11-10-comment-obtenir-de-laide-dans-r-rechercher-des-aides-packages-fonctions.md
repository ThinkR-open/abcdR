---
ID: 653
post_title: 'Comment obtenir de l&#039;aide dans R ? : rechercher des aides, packages, fonctions'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-obtenir-de-laide-dans-r-rechercher-des-aides-packages-fonctions/
published: true
post_date: 2011-11-10 15:06:06
tags: [ ]
categories:
  - base indispensable
---
<pre><code>find(nom_fonction) # renvoie le nom du package dans lequel se trouve la fonction<br />apropos(nom_fonction) # renvoie un vecteur de caractères avec le nom de toutes les fonctions en lien avec la première<br />demo(graphics)# propose une démonstration de l'utilisation des graphiques avec les codes et les graphiques associés. A la place de graphics on peut également écrire persp, plotmath...<br />objects(grep("library",search())) # liste toutes les fonctions présentes dans la librairie </code></pre>