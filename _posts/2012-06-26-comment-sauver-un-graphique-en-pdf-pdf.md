---
ID: 1795
post_title: Comment sauver un graphique en pdf? pdf
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-sauver-un-graphique-en-pdf-pdf/
published: true
post_date: 2012-06-26 17:31:21
---
R vous permet de sauvegarder directement vos graphique en pdf. Vous pouvez ainsi choisir les dimensions du fichier et obtenir la qualité voulue. Pour cela il suffit d'utiliser la fonction pdf. Les nombreux arguments de la fonction permettent de choisir de nombreux paramètres: ?pdf.<br />Un exemple:<br /><br /><br /> <pre><br /><br /> setwd("D:/R/image") #on choisit le répertoire<br /><br />#pour l'exemple on trace la croissance radiale d'une plante<br /><br /> host&lt;-function(t){5/(1+1000*exp(-1.18*t^0.4))}<br />time&lt;-c(0:200)<br /><br /># on utilise la fonction pdf avant le graphique<br /><br />pdf("croissance_plante.pdf", height=10,width=10) #les tailles sont à 7 par défaut<br /><br />#on trace le graphique<br /><br />par(mar=c(4, 6, 2, 1),cex.lab=1.3,cex.axis=1.2)<br />plot(host(time)~time,type='l',lwd=4.5,col="grey",ylab="Plant radius (cm)",<br />    xlab="",ylim=c(0,5))<br />abline(h=1.1,col='gray10',lty=3)<br />abline(v=50,col='gray10',lty=3)<br />abline(h=3.15,col='grey',lty=3)<br />abline(v=100,col='grey',lty=3)<br />arrows(100,1.1,100,3.15,col='red',lwd=4,code=3)<br />arrows(50,1.1,100,1.1,col='black',lwd=4,code=3)<br /><br /> #on ferme le graphique<br /><br />dev.off()<br /><br />#le pdf se situe dans votre répertoire<br /> <br /></pre> <br /><br />Notez qu'il est possible de sauver vos graphique sous de nombreux formats en utilisant des fonctions similaires comme jpeg(), tiff(), png(), bmp()....<br /><br /><br />