---
ID: 1619
post_title: 'Comment obtenir les coordonnées d&#039;un point quelconque sur un graphe ? : locator'
author: stan
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/pour-obtenir-les-coordonnees-dun-point-quelconque-sur-un-graphe/
published: true
post_date: 2012-03-03 17:56:51
tags: [ ]
categories:
  - graphique
---
Par exemple, si l'on veut placer des lettres sur un Barplot pour indiquer si les groupes sont significativement différents ou non ; utiliser la fonction <strong>locator()</strong> en précisant dans les parenthèses le nombre de points dont on cherche les coordonnées : il suffit alors de cliquer sur le graphe à l'endroit où l'on veut...<br /><br /><br />  <pre><code><br />barplot(c(1,2,3),space=c(0.5,0.5,0.5),ylim=c(0,3.5))<br /><br />locator(3)<br />#Là, cliquer en 3 endroits du graphe...<br /><br />text(c(1,2.5,4),c(1.17,2.18,3.17),c("a","b","c"),font=2) <br /> </code></pre>