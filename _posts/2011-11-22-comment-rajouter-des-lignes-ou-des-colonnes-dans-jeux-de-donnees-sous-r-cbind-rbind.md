---
ID: 866
post_title: 'Comment rajouter des lignes ou des colonnes dans des jeux de données sous R ? : cbind, rbind'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-rajouter-des-lignes-ou-des-colonnes-dans-jeux-de-donnees-sous-r-cbind-rbind/
published: true
post_date: 2011-11-22 17:12:14
---
Lorsque l'on manipule des jeux de données on est souvent amené à vouloir rajouter des colonnes, rajouter des lignes concaténer des jeux de données...<br /><br />Pour rajouter des colonnes, il faut utiliser la fonction <strong>cbind</strong>. Il faut que les 2 jeux de données aient le même nombre de ligne.<br /><strong>cbind</strong> rajoute les colonnes par la droite.<br /><br /> <pre><code> <br />deuxcolonnes&lt;-data.frame(matrix("x",150,2))<br />names(deuxcolonnes)&lt;-c("colonne1","colonne2")<br />deuxcolonnes<br /><br />rescol&lt;-cbind(iris,deuxcolonnes)<br />head(rescol)<br /> </pre> <br /><br />Pour rajouter des lignes il faut utiliser la fonction <strong>rbind</strong>. Contrainte : il faut avoir le même nombre de colonnes et que ces colonnes aient le même nom.<br /><br /> <pre><code><br /><br />deuxlignes&lt;-data.frame(matrix(1,2,5))<br />names(deuxlignes)&lt;-names(iris)<br />deuxlignes<br /><br />reslign&lt;-rbind(deuxlignes,iris)<br />head(reslign) <br /> </pre> <br /><br /> Il faut tout de même veiller à conserver une homogénéité dans les variables (rajouter des <strong>character</strong> dans une colonne de <strong>numeric</strong> donnera des NA)<br /><br /><br /><br /><br />