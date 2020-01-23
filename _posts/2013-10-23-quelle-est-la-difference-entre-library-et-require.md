---
ID: 2922
post_title: >
  quelle est la différence entre library
  et require ?
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/quelle-est-la-difference-entre-library-et-require/
published: true
post_date: 2013-10-23 12:32:00
tags: [ ]
categories:
  - "message d'erreur"
---
<p>Il n 'y en a pas...ou si peu. La seule différence est que require est a utiliser dans le corps d 'une fonction , qui affichera un message d'erreur si le package n'existe pas mais continuera son execution</p> <pre><code><br /><br />mafunc&lt;-function(a){<br /><br />require(bidul)<br />print(a)<br />}<br /><br /><br />mafunc2&lt;-function(a){<br /><br />library(bidul)<br />print(a)<br />}<br />mafunc("coucou")<br />mafunc2("coucou")<br /><br /> <br /> </code></pre>
<p> require peut ausi etre utilisé pour tester l'existence d'un package puique qu'il va retourner TRUE ou FALSE alors que library ne renvoie rien </p>