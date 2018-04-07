---
ID: 3052
post_title: >
  Comment gérer les données manquantes
  lors d’une opération grâce au
  paramètre na.rm ?
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-gerer-les-donnees-manquantes-lors-dune-operation-grace-au-parametre-na-rm/
published: true
post_date: 2015-07-07 14:55:14
---
<p>Les données manquantes empêchent R de réaliser des opérations comme la moyenne ou la somme appliquée à un vecteur par exemple. Pour que le logiciel puisse les réaliser il est nécessaire d’ajouter le paramètre na.rm afin que les données manquantes soient prises en compte en tant que telles.<br /><br /> <pre><code><br /><br />x&lt;-c(1,NA,4.3,8,NA,9.5,3.1)      # x est un vecteur contenant des données manquantes</p><p>sum(x)                                # Renvoie "NA", la fonction sum() ne prend pas en compte les données manquantes</p><p>sum(x, na.rm=TRUE)              # Renvoie la somme. Le paramètre "na.rm" permet de s'affranchir des "NA"</p><p> </p><p>mean(x)                       # Renvoie "NA"</p><p>mean(x, na.rm=TRUE)     # Renvoie la moyenne</p><p></code></pre> </p>