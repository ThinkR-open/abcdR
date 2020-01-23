---
ID: 669
post_title: 'Comment tracer un diagramme Quantile-Quantile avec R ? : QQ-plot'
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-tracer-un-diagramme-quantile-quantile-avec-r-qq-plot/
published: true
post_date: 2011-11-14 11:05:39
tags: [ ]
categories:
  - base indispensable
---
Le diagramme Quantile-Quantile est un outil graphique qui permet de comparer la pertinence de l'ajustement de données à un modèle théorique (loi de probabilité). Cela peut se révéler très pratique pour analyser la normalité des résidus d'un modèle linéaire par exemple.<br /><br />Cet outil permet également de comparer deux distributions : un alignement selon la première bissectrice indique la présence d'une identité de loi.<br /><br />R présente des fonctions de bases permettant de tracer des QQplot :<br /><br /><strong>qqplot</strong> produit un QQplot de deux jeux de données<br /><strong>qqnorm</strong> produit un QQplot pour une loi normale<br /><strong>qqline</strong> trace la droite de Henry<br /><br />Voyons un exemple d'utilisation<br /><br /> <pre><code><br /><br /> <br />#nombres aléatoires tirés d'une loi<br /><br />#normale de moyenne 0 et d'écart-type 1<br />a&lt;-rnorm(100,mean=0,sd=1)<br /><br />#gamma<br />b&lt;-rgamma(100,shape=1,rate=0.8)<br /><br />#normale de moyenne 0.5 et d'écart-type 0.5<br />c&lt;-rnorm(100,mean=0.5,sd=0.5)<br /><br />#on visualise tout ça sur un graphique<br /><br />x11()<br />plot(a,pch=20,ylim=c(-5,5))<br />points(b,pch=20,col="blue")<br />points(c,pch=20,col="grey")<br />legend("bottomleft",legend=c("nombres aléatoires loi normale1",<br />    "nombres aléatoires loi gamma","nombres aléatoires loi normale2"),<br />    col=c("black","blue","grey"),pch=20)<br /><br /><br />x11()<br />par(mfrow=c(2,2))<br /><br />qqnorm(a,main="QQ plot a")<br />qqline(a)<br /><br />qqnorm(b,main="QQplot b")<br />qqline(b)<br /><br />qqplot(b,a,main="QQplot b et a")<br /><br />qqplot(a,c,main="QQplot a et c") <br /><br /></code></pre> <br /><br />Il existe d'autres fonctions permettant de tracer des QQplots. La fonction qqmath du package Lattice permet, elle, de tracer des QQplot pour d'autres distributions théoriques (qqnorm compare à une loi normale).<br /><br />Bon QQplot!