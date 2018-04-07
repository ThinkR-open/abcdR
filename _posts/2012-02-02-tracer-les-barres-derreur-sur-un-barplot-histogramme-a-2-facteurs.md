---
ID: 1201
post_title: 'Comment tracer les barres d&#039;erreur sur un barplot (histogramme) à 2 facteurs avec R'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/tracer-les-barres-derreur-sur-un-barplot-histogramme-a-2-facteurs/
published: true
post_date: 2012-02-02 09:19:40
---
Considérons un exemple<br />la masse des larves de papillons varie avec la température et de la nourriture (plante)<br />Pour tracer un barplot avec les barres d'erreur de ces deux facteurs :<br /><br /> <pre><code><br /><br /> <br />attach(data)<br />mean.mass&lt;-tapply(mass,list(T,H),mean)       # calcul de la moyenne pour chaque groupe <br /><br />sd&lt;-tapply(mass,list(T,H),sd)                         # ou T est le facteur Température et H le facteur plante<br />length&lt;-tapply(DTp,list(T,H),length)<br />sqrt&lt;-sqrt(length)<br />length&lt;-as.numeric(length)<br />se&lt;-sd/sqrt                                                   #calcul de l'erreur standard pour chaque groupe<br /><br /><br />graphemass&lt;-barplot(mean.mass,beside=TRUE,density=c(0,30),col=1,ylim=c(0,15.2),font=3,ylab="masse (mg)",)<br />library(nmle)                                                #nécessaire pour appeler la fonction "segments" <br />segments(graphemass, mean.mass -se,graphemass, mean.mass +se)       <br />segments(graphemass-0.1, mean.mass -se,graphemass+0.1, mean.mass -se)<br />segments(graphemass-0.1, mean.mass +se,graphemass+0.1, mean.mass +se)]<br /> </pre>  <br /><br /><br /><br /><br /><br />