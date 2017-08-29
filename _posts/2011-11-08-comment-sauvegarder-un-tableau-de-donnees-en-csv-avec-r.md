---
ID: 531
post_title: >
  Comment sauvegarder un tableau de
  données en CSV avec R ?
author: anonyme
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-sauvegarder-un-tableau-de-donnees-en-csv-avec-r/
published: true
post_date: 2011-11-08 12:36:02
---
 <pre lang='rsplus'><br /><br /> # on choisit le dossier dans lequel on veut sauver le fichier<br /><br />setwd("U:/simulations")<br /><br /><br /># on crée un jeu de données, <br />#ici on simule une densité de probabilité d'une loi normale de moyenne 2 et d'écart type 0.5<br /><br />v&lt;-seq(0,7,by=0.1)<br />a&lt;-dnorm(v,mean=2,sd=0.5)<br />plot(v,a) # on vérifie visuellement<br /><br />#on crée un dataframe avant de le sauver<br /><br />data&lt;-data.frame(TL=v,F=a)<br /><br /># on utilise la fonction write.table, voir ?write.table<br /># ne pas oublier le .csv à la fin du nom du fichier excel "data.csv"<br /><br />write.table(data, "data.csv", row.names=FALSE, sep="\t",dec=",", na=" ")<br /><br /> <br /></pre>