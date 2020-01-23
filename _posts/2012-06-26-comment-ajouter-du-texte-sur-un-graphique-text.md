---
ID: 1798
post_title: >
  Comment ajouter du texte sur un
  graphique? text
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-ajouter-du-texte-sur-un-graphique-text/
published: true
post_date: 2012-06-26 17:31:17
tags: [ ]
categories:
  - graphique
---
R vous permet d'ajouter du texte à vos graphique en utilisant la fonction text. Il vous suffit de fournir les coordonnées du point où le texte doit être affiché. Si vous n'en avez aucune idée n'hésitez pas à utiliser la fonction locator() pour vous repérer.<br />Un exemple:<br /><br /> <pre><code><br /><br /> host&lt;-function(t){5/(1+1000*exp(-1.18*t^0.4))}<br />time&lt;-c(0:200)<br /><br /><br />par(mar=c(4, 6, 2, 1),cex.lab=1.3,cex.axis=1.2)<br />plot(host(time)~time,type='l',lwd=4.5,col="grey",ylab="Plant radius (cm)",<br />    xlab="",ylim=c(0,5))<br />abline(h=1.1,col='gray10',lty=3)<br />abline(v=50,col='gray10',lty=3)<br />abline(h=3.15,col='grey',lty=3)<br />abline(v=100,col='grey',lty=3)<br />arrows(100,1.1,100,3.15,col='red',lwd=4,code=3)<br />arrows(50,1.1,100,1.1,col='black',lwd=4,code=3)<br /><br /># on ajoute du texte en face des flèches en choisissant la couleur et la taille avec col et cex<br /><br />text(150,2.2," croissance radiale",col='red',cex=1.5)<br />text(75,0.5,"dt",cex=1.5)<br /><br /></code></pre> <br /><br />