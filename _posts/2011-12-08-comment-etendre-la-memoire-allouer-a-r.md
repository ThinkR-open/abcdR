---
ID: 989
post_title: >
  comment étendre la mémoire allouée à
  R
author: guillaume
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-etendre-la-memoire-allouer-a-r/
published: true
post_date: 2011-12-08 12:09:21
---
De temps en temps, les données que l'on utilise peuvent être de grandes tailles et R ne peut pas les prendre en charge car sa mémoire est trop remplie. <br />Dans ce cas 2 solutions s'offrent à vous : soit vous supprimez des éléments (dont vous pouvez avoir la liste avec ls() ) en utilisant rm(nom_ élément_à_supprimer), soit vous augmentez la capacité de la mémoire allouée à R en utilisant la fonction suivante :<br /><br /> <pre><code>memory.limit(size=4000) <br /># si par mégarde vous mettez une valeur trop grande, R vous retournera un message d'erreur plein d'humour</pre>