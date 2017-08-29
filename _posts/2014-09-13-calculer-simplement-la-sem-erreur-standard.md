---
ID: 2988
post_title: >
  Coment alculer simplement la SEM dans R
  ? (Erreur Standard)
author: anonyme
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/calculer-simplement-la-sem-erreur-standard/
published: true
post_date: 2014-09-13 21:28:18
---
Une petite fonction sans prétention qui vous permettra de calculer simplement la SEM de tout jeu de donnée.<br /><br /> <pre lang='rsplus'><p>sem&lt;-function(x,digits= 3,na.rm=FALSE)<br />{<br />if(na.rm==TRUE) {x&lt;-x[!is.na(x)]}<br />return(round(sd(x)/sqrt(length(x)),digits))<br />}</p></pre> <br /><br />Exemple : <br /><br /><pre lang='rsplus'>data&lt;-c(4,6,7,8,34,67,77,4,4) #soit un jeu de donnée <br />sem(data)<br />[1] 9.736<br /><br />sem(data, digits = 4) #nous pouvons tout à fait spécifier le nombre de chiffre après la virgule à considérer<br /> [1] 9.7355 </pre>