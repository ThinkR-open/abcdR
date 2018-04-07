---
ID: 753
post_title: >
  Comment sauvergarder et charger un objet
  dans R ? dput et dget
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-sauvergarder-et-charger-un-objet-dans-r-dput-et-dget/
published: true
post_date: 2011-11-14 21:55:18
---
Le couple<strong> save</strong> et <strong>load</strong> a l'inconvénient de forcer le nom de l'objet que vous voulez charger.<br />Exemple : si vous avez enregistré la variable "a" qui vaut 3 grace à save, load vous donnera une variable "a" qui vaut 3, mais vous n'allez pas pouvoir charger cette variable dans un autre objet, et cela écrasera votre variable "a" d'origine.<br /><br /><br /><br /> <pre><code><br />rm(list=ls(all=TRUE)) <br />a&lt;-5 <br />save(a,file="fichier") <br />a&lt;-3 <br />load("fichier") a # a vaut maintenant 5 , et avec load et save il n'est pas possible de charger ce 5 dans une autre variable pour "sauvegarder" votre 3<br /> </code></pre> <br /><br />dput et dget permettent de stocker un objet dans un fichier et de pouvoir le charger dans un autre objet<br /><br /><br /> <pre><code><br />rm(list=ls(all=TRUE)) <br />a&lt;-5 <br />dput(a,file="fichier")<br />a&lt;-3<br />b&lt;-dget("fichier")<br />#b et a valent alors repspectivement 3 et 5<br /> </code></pre> <br /><br /><br /><br />