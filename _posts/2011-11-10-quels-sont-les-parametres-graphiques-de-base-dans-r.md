---
ID: 644
post_title: >
  Quels sont les paramètres graphiques de
  base dans R ?
author: Guillaume
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/quels-sont-les-parametres-graphiques-de-base-dans-r/
published: true
post_date: 2011-11-10 13:59:07
---
Ceci est une liste non exhaustive des paramètres graphiques de la library graphique de base. <pre lang='rsplus'><br />par() # fonction des paramètres graphiques<br />par(mar=c(1,1,1,1)) #changer la taille de la marge (bas, gauche, haut, droite)<br />par(oma=c(1,1,1,1)) #changer la taille de la marge extérieure (bas, gauche, haut, droite) <br />par(las=2) #changer l'orientation du texte 0 : toujours parallèle à l'axe [<em>default</em>], 1 : toujours horizontal, 2 : toujours perpendiculaire, 3 : toujours vertical<br />par(font=1)  #la police à utiliser 1 : normal, 2 : gras , 3 : italique<br />par(cex) #la taille du texte<br /></pre> <br /><br />Pour plus d'infos, n'oubliez pas<br /> <pre lang='rsplus'><br />?par<br /> </pre>