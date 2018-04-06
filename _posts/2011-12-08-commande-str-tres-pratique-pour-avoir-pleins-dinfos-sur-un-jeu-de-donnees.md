---
ID: 993
post_title: 'Comment obtenir pleins d&#039;infos sur un jeu de données ? str'
author: stephane
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/commande-str-tres-pratique-pour-avoir-pleins-dinfos-sur-un-jeu-de-donnees/
published: true
post_date: 2011-12-08 16:27:18
---
Lorsque l'on est face à un jeux de données, il peut être pratique d'en avoir une vue d'ensemble : de savoir si les variables sont quali ou quanti, de connaître les niveaux des facteurs etc...<br /><br />
Exemple : on va créer un data.frame avec du quantitatif et du qualitatif<br /><br /> <pre><br />x&lt;-c(1,4,5,9) <br />y&lt;-c("bleu","bleu","rouge","noir") <br />data&lt;-data.frame(x,y) <br />str(data)<br /></pre> <br /><br />La fonction str() renvoie le nombre d'observations du jeu de données, dresse la typologie de chaque variable (facteur/numérique/intervalle) et donne les premiers éléments. Quand il s'agit de facteurs, elle donne également le nombre de modalités.