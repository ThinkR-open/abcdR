---
ID: 435
post_title: >
  Comment transformer un vecteur de classe
  « factor » vers la classe
  « numeric » dans R ?
author: Benjamin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-transromer-un-vecteur-de-class-factor-vers-la-class-numeric-dans-r/
published: true
post_date: 2011-11-04 14:37:45
---
 <pre lang='rsplus'>MonVecteur=as.numeric(as.character(MonVecteur))</pre> <br /><br />Cette commande permet de changer la classe de MonVector, reconnue comme "factor" par R mais codé à l'aide de chiffre, en classe "numeric". Le passage par la classe "character" évite les changements des dits chiffres de MonVecteur souvent observés lors de l'utilisation de la fonction as.numeric().<br /><br />exemple:<br /><br />  <pre lang='rsplus'><br />vec&lt;-as.factor(c("3","7","11","13")) <br />vec<br />as.numeric(vec) #ne donne pas ce que l'on veut<br />as.numeric(as.character(vec)) # permet d'obtenir le résultat voulu.<br /> </pre> <br /><br />