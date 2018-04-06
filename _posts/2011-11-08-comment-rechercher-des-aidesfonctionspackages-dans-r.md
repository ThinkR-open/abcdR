---
ID: 588
post_title: >
  Comment rechercher des
  aides/fonctions/packages dans R ?
author: Benjamin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-rechercher-des-aidesfonctionspackages-dans-r/
published: true
post_date: 2011-11-08 16:58:22
---
Devant les importantes possibilités de R, il est possible et utile de lancer certaines recherches en ligne de commande pour trouver des fonctions ou des paquets associés.<br />(NB : une connexion internet est requise)<br /><br />Tout d'abord, pour obtenir l'aide (en anglais) d'une fonction, il y a 2 possibilités :<br /> <pre><br />help(LaFonction) #LaFonction = le nom de la fonction<br />#ou<br />?LaFonction<br /><br />#Exemple avec la fonction matrix() qui permet de créer une matrice<br />?matrix<br /></pre> <br /><br /><br />Si R vous renvoie un message d'erreur disant que "LaFonction" n'existe pas, c'est que : <br /><br />- soit elle n'existe effectivement pas ! Dans ce cas, vous pouvez essayer de rechercher une fonction qui permet ce que vous voulez via la ligne de commande :<br /> <pre><br />RSiteSearch("keywords", restrict="functions") #ne pas oublier les guillemets<br /></pre> <br />Cette fonction va rechercher toutes les fonctions R selon les mots clés donnés (attention il est conseillé de faire la recherche en anglais afin d'avoir plus de résultats). <br />Essayer de lancer par example :<br />  <pre><br /> RSiteSearch("linear model", restrict="functions") <br /> </pre>  <br />Vous obtiendrez toutes les fonctions en rapport avec les mots clés : linear+model<br /><br /><br />- soit LaFonction existe mais vous ne savez plus dans quel paquet elle se trouve. Dans ce cas, lancez la commande:<br />  <pre><br /> help.search("LaFonction") #ne pas oublier les guillemets<br /> </pre>  <br />Cette fonction donne une liste de fonctions en rapport avec le nom LaFonction et les paquets associés que vous pouvez installer et/ou charger sous la forme :<br />paquet1::fonction1  description de la fonction1<br />paquet1::fonction2  description de la fonction2<br />.....<br />Essayez par exemple :<br />  <pre><br /> help.search("matrix")<br /> </pre>  <br /><br />