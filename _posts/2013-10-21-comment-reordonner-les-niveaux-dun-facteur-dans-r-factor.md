---
ID: 2725
post_title: 'Comment reordonner les niveaux d&#039;un facteur dans R ? Factor'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-reordonner-les-niveaux-dun-facteur-dans-r-factor/
published: true
post_date: 2013-10-21 07:38:52
---
<br /> lorsque l'on utilise une variable de type qualitative (ordonnée ou non) R va classer les différents niveaux par ordre alphabétique,<br />ce qui n'st pas toujours l'idial. voici la procédure permettant de changer l'ordre des niveaux de facteur:<br /><br /> <pre><code><br />vec&lt;-as.factor(c("haut","haut","bas","moyen","moyen"))<br />levels(vec) #l'ordre ne va pas<br />vec2&lt;-factor(vec,c("bas","moyen","haut"))<br /><br /># si vous voulez simplement mettre un des niveau en premier pour l'utiliser en tant que référence en regression<br />vec3&lt;-relevel(vec,ref="moyen")<br />levels(vec)<br />levels(vec2)<br />levels(vec3)</pre>