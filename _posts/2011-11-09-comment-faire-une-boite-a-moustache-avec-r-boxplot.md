---
ID: 609
post_title: 'Comment faire une boîte à moustache avec R ?: Boxplot'
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-faire-une-boite-a-moustache-avec-r-boxplot/
published: true
post_date: 2011-11-09 12:28:32
---
Vous voulez représenter vos données avec la boîte à moustache de Mr Tukey (boxplot)? Rien de plus facile avec R.<br /><br /> <pre lang='rsplus'><br /><br />#jeu de données fictif pour exemple<br /><br />a&lt;-c(1,1,1,5,5,5,5,6,6,8,8,20,30)<br />b&lt;-c(0.5,4,5,6,6,6,6,6,7,7,7,7,8)<br /><br />#traçons les boxplots de base avec la fonction boxplot<br /><br />boxplot(a)<br />boxplot(b)<br /><br />#on enlève les outliers, en mettant outline=FALSE<br /><br />boxplot(a,outline=FALSE)<br />boxplot(b,outline=FALSE)<br /><br />#pour les mettre à l'horizontal<br /><br />boxplot(a,horizontal=TRUE)<br />boxplot(b,horizontal=TRUE)<br /><br />#changer de couleur<br /><br />boxplot(a,border="blue")<br />boxplot(b,border="purple")<br /><br />#nouveau jeu de données plus complexe<br /><br />n&lt;-c(1,1,1,5,5,5,5,6,6,8,8,20,30,0.5,4,5,6,6,6,6,6,7,7,7,7,8,3,5,8,8,8,8,8,9,9,9,9,11,12)<br />m&lt;-c(rep('A',13),rep('B',13),rep('C',13))<br /><br />data&lt;-data.frame(N=n,M=m)<br /><br />#on visualise le tableau ainsi créé<br />data<br />summary(data)<br /><br />#On a 13 mesures pour chaque modalité (A,B,C)<br />#comment avoir les boxplots pour chaque modalité?<br /><br />boxplot(data$N~data$M)<br /><br />#on enlève les outliers <br /><br />boxplot(data$N~data$M,outline=FALSE)<br /><br />#on change les couleurs avec l'argument border<br /><br />boxplot(data$N~data$M,outline=FALSE,border=c("blue","purple","green"))<br /><br />#on change les noms avec names: A devient mesure1, B mesure2, C mesure3<br /><br />boxplot(data$N~data$M,outline=FALSE, names=c("mesure1","mesure2","mesure3"))<br /><br />#on ajoute les légendes<br /><br />boxplot(data$N~data$M,xlab="légende x",ylab="légende y",main="boxplot")<br /><br />#on colore les boîtes avec l'argument col<br /><br />boxplot(data$N~data$M,outline=FALSE,col=c("blue","purple","green"))<br /><br /> #on change la largeur des moustache avec staplewex<br /><br />x11()<br />par(mfrow=c(2,2))<br />boxplot(data$N~data$M,staplewex=1,outline=FALSE,main="1")<br />boxplot(data$N~data$M,staplewex=0.5,outline=FALSE,main="0.5")<br />boxplot(data$N~data$M,staplewex=2,outline=FALSE,main="2")<br /> <br /> <br />#on joue sur la proximité des boîtes avec boxwex<br /><br />x11()<br />par(mfrow=c(2,2))<br />boxplot(data$N~data$M,boxwex=1,outline=FALSE,main="1")<br />boxplot(data$N~data$M,boxwex=0.1,outline=FALSE,main="0.1")<br />boxplot(data$N~data$M,boxwex=0.5,outline=FALSE,main="0.5")<br /><br /> <br /><br /></pre> <br /><br />On peut modifier d'autres paramètres pour céer des boxplot, consultez ?boxplot pour ça!<br />Amusez vous bien!