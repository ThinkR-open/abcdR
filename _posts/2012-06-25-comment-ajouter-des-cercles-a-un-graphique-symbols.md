---
ID: 1778
post_title: >
  Comment ajouter des cercles à un
  graphique? symbols
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-ajouter-des-cercles-a-un-graphique-symbols/
published: true
post_date: 2012-06-25 16:36:08
tags: [ ]
categories:
  - graphique
---
Pour ajouter des cercles à un graphiques (ou simplement tracer des cercles) vous pouvez utiliser la fonction symbols qui permet d'ailleurs de tracer également des carrés, rectangles, étoiles etc...<br />Un petit exemple pour les cercles:<br /><br /><br /> <pre><code><br /> # coordonnées du centre des cercles<br />ax&lt;-c(20,20,20,80,80,80)<br />by&lt;-c(80,20,20,80,20,20)<br /><br />#taille<br />s&lt;-c(1,1,2,1,1,2)<br />#couleur<br />couleur&lt;-c("black","black","grey","blue","green","grey")<br /><br />#on trace les cercles sur un graphique<br />symbols(ax,by,circles=s,inches=1,fg=couleur,xlim=c(0,100),ylim=c(0,100),lwd=2.5) <br /><br />#pour le fun on ajoute un carré en rouge<br /><br /> symbols(50,50,squares=10,inches=1,fg="red",add=TRUE,lwd=2.5) <br /> <br /></code></pre>