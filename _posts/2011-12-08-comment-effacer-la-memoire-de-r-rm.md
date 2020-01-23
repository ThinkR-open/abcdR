---
ID: 981
post_title: Comment effacer la mémoire de R ? rm
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-effacer-la-memoire-de-r-rm/
published: true
post_date: 2011-12-08 11:02:42
tags: [ ]
categories:
  - base indispensable
  - programmer avec R
---
R va accumuler en mémoire un certain nombre d'objets (listes, vecteurs, fonctions...)<br /> Si vous voulez tous les effacer pour repartir d'une mémoire vierge (au lancement d'un script par exemple), vous pouvez utiliser cette commande :<br />  <pre><code>rm(list=ls())</code></pre> <br /> <br /> En pratique, la fonction rm vous permet d'effacer l'objet de votre choix<br /> <br />  <pre><code><br />a&lt;-5<br />a<br />#[1] 5<br />rm(a)<br />a<br />#Error: object 'a' not found</code></pre>