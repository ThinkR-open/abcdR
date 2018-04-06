---
ID: 504
post_title: 'Comment obtenir un aperçu d&#039;un objet dans R ? Les fonctions head et View'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-obtenir-un-apercu-dun-objet-dans-r-les-fonctions-head-et-view/
published: true
post_date: 2011-11-06 18:16:30
---
Quand on travaille sur un grand jeu de données, on peut voir à quoi il ressemble en rentrant son nom directement dans la console : <br /><br />
<pre>data(iris)<br />
iris</pre> <br />
Mais pour de gros objets ce n'est pas du tout pratique... et souvent votre ordinateur peut avoir du  mal à tout vous afficher. <br />
Utilisez plutôt :<br /><br />
<pre>data(iris)<br />
View(iris) # pensez bien au V majuscule</pre> <br />
Cela ouvre une nouvelle fenêtre avec l'intégralité du jeu de données. Et vous pouvez facilement vous balader dedans.
<br />
Par contre si seul l'aspect général du tableau vous intéresse, vous pouvez utiliser la fonction <strong>head</strong> : <br /><br />
<pre>data(iris)<br />
head(iris)</pre> <br />
Elle vous affiche les 5 premières lignes de votre jeu de données. <br />
Et cela fonctionne sur d'autres objets... les matrices, les listes etc. <br />
la fonction <strong>tail</strong> fait la même chose (ou plutôt je ne vois pas la différence).
&nbsp;