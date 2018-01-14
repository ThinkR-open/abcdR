---
ID: 3242
post_title: 'Comment tracer la courbe d&rsquo;une fonction connue dans un intervalle donné ? curve()'
author: Diane
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-tracer-la-courbe-dune-fonction-connue-dans-un-intervalle-donne-curve/
published: true
post_date: 2016-02-07 09:39:24
tags: [ ]
categories:
  - fonctions utiles
  - graphique
---
R peut tracer la courbe d'une fonction f(x) pour peu qu'on connaisse sa formule et qu'on lui fixe des bornes.
<pre lang="rsplus"> curve(expr=1/(sqrt(2*pi)*0.3)*exp(-((x-0)^2/(2*0.3^2))), from=-1.5, to= 1.5)</pre>
La fonction curve() prend (entre autres) comme argument expr (l'expression de la fonction, ici la densité de probabilité de la loi normale), from (la borne inférieure de l'intervalle à tracer) et to (la borne supérieure de l'intervalle à tracer)

Par défaut curve() utilise un paramètre n fixé à 101 : c'est le nombre de x compris entre from et to qui seront évalués par l'expression renseignée dans expr. Plus n est petit, plus la courbe sera "anguleuse"