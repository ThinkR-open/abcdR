---
ID: 521
post_title: >
  Comment tracer un graphique à deux
  ordonnées dans R ?
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-tracer-un-graphique-a-deux-ordonnees-dans-r/
published: true
post_date: 2011-11-08 12:06:44
---
Il existe plusieurs façons de faire un graphique avec deux ordonnées. En voici une qui utilise les outils graphiques de base<br /><br /> <pre><code> <br /> # Données d'exemple (peu importe...)<br />times&lt;-seq(0,3000)<br />p&lt;- 0.002197451 * exp(- 0.0009076665 *times)<br />b1&lt;- 7.376812e-08<br />b2&lt;-0.2652811<br />b3&lt;- 1986.235<br />s&lt;-b1*exp(-0.5*(log(times/b3)/b2)^2)<br /># On ouvre une nouvelle fenêtre plot.new()<br /># On choisit les paramètres de la fenêtre, voir ?par, ici mar correspond aux marges par(mar=c(5,4,3,4))<br /># On met le premier graphique en définissant les limites des axes<br />plot.new()<br />plot.window(xlim=c(0,3000),ylim=c(0,0.0022))<br /><br />lines(p~times,type='l',col='burlywood1',lwd=3)<br /># on ajoute les axes et leurs légendes<br />axis(1)<br />axis(2)<br />title(xlab="time")<br />title(ylab="rp")<br /># On superpose le graphique avec un axe des ordonnées différent qui sera à droite du graphique (axis(4))<br />plot.window(xlim=c(0,3000),ylim=c(0,8e-08))<br />lines(s~times,type='l',col='burlywood3',lwd=3)<br />axis(4)<br />#titre du graphique<br />title(main="force of infection")<br />#légende de l'ordonnée n°2<br />mtext("rs",side=4,line=2.5)<br />#on termine le graphique<br />box() <br /><br /></code></pre>