---
ID: 732
post_title: 'Comment enlever les outliers d&#039;un boxplot?'
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-enlever-les-outliers-dun-boxplot/
published: true
post_date: 2011-11-14 20:58:24
---
Les boxplots mettent parfois en évidence des individus qu'on peut qualifier d'atypiques ou outliers.<br /><br />Un fois mis en évidence graphiquement on peut les repérer et si nécessaire les enlever.<br /><br /> <pre><br /><br />#on crée un jeu de donnée <br /><br />b1&lt;-c(0.1, 0.2,6,5,5,6,7,8,8,9,9,9,10,10,25)<br /><br />#on trace le boxplot<br /><br />boxplot(b1) #il y a 3 outliers <br /><br />#on met le boxplot dans un objet box<br /><br />box&lt;-boxplot(b1)<br />boxplot(b1)<br /><br />#box$out donne les outliers<br /><br />#on crée des nouvelles données sans les outliers<br /><br />b2&lt;-b1[-which(b1%in%box$out)]<br /><br />#on vérifie<br /><br />boxplot(b2)<br /><br /></pre> <br /><br />