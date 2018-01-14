---
ID: 978
post_title: Comment charger un script R ? source
author: anonyme
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-charger-un-script-r-source/
published: true
post_date: 2011-12-08 11:02:45
tags: [ ]
categories:
  - base indispensable
  - programmer avec R
---
Lorsque vous avez beaucoup de fonctions dans un fichier, vous pouvez les charger en faisant un copier-coller dans la console ou en faisant ctrl+R après avoir sélectionné vos fonctions (pour windows). Mais ce n'est pas très pratique et surtout c'est souvent assez long.<br /><br />Je vous propose d'utiliser la fonction <strong>source</strong>. Cette fonction va interpréter ce qui se trouve dans un fichier.<br />Concrètement, vous mettez vos fonctions et autres scripts a interpréter dans un fichier "function.R" ' (qui n'est rien d'autre qu'un fichier texte), vous l'enregistrez sur votre disque dur (dans votre espace de travail c'est le plus simple... l'important est de savoir ou il est). Puis vous lancez:<br /><br /> <pre lang='rsplus'>source("function.R")<br />ls()# va vous donner ce que R a maintenant en mémoire<br /></pre> <br /><br /><br />En pratique on peut sourcer tout et n'importe quoi : charger des fonctions, lancer des calculs... Il faut par contre que votre fichier soit irréprochable : que tous les commentaires soient bien précédés de <strong>#</strong> par exemple.<br /><br />