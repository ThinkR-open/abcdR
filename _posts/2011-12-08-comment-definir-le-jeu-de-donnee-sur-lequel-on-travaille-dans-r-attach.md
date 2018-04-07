---
ID: 1006
post_title: >
  Comment définir le jeu de donnée sur
  lequel on travaille dans R ? attach
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-definir-le-jeu-de-donnee-sur-lequel-on-travaille-dans-r-attach/
published: true
post_date: 2011-12-08 17:07:19
---
La fonction attach permet de ne pas à avoir à préciser à chaque fois le jeux de données sur lequel on travaille.<br />Un exemple rendra cette fonctionnalité plus claire :<br /><br /> <pre><code><br />data(iris)<br />iris$Species<br />Species #Error: object 'Species' not found<br />attach(iris)<br />Species # renvoie la même chose que iris$Species <br /> </pre>