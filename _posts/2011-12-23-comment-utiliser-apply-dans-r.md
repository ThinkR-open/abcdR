---
ID: 1128
post_title: Comment utiliser apply dans R ?
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-utiliser-apply-dans-r/
published: true
post_date: 2011-12-23 09:59:14
---
R n'aime pas les boucles: c'est long, parfois ca plante..mais surtout c'est long :).<br /><br />Une des fonctions qu'il faut absolument maîtriser est <strong>apply</strong>. Elle permet de réaliser en parallèle la même opération sur toutes les lignes/ toutes les colonnes d'une matrice ou d 'un jeu de données.<br /><br /><br />Pour utiliser <strong>apply</strong>, il faut <br /><ul><li>créer une fonction qui prend en paramètre un vecteur et qui nous ressort une transformation de ce vecteur.</li><li>que ce vecteur soit de la forme qu'une ligne ou qu'une colonne de notre jeu de données (prendre en compte les variables quali, l'ordre des variables..)</li><li>lancer apply sur son jeu de données, en précisant la fonction et s'il faut le prendre en ligne ou en colonne.</li></ul><br /><br /> <pre><br /> data(iris)<br /># on va fabriquer une fonction qui, pour chaque ligne, nous donnera la somme de Sepal.Length, Sepal.Width, Petal.Length et Petal.Width<br /><br />masomme&lt;-function(monvec){<br /># les vecteurs sont ici de la forme c(5.1,3.5,1.4,0.2, setosa). Un simple sum(monec) ne fonctionnerait pas à cause de setosa<br />return(sum(as.numeric(monvec[1:4])))# le as.numeric permet de passer outre la transformation en caractères<br />}<br />lasomme&lt;-apply(data.frame(iris),FUN=masomme,MARGIN=1)<br />head(cbind(iris,lasomme))# on rajoute une colonne avec le résultat et on regarde le début du jeu de données <br /><br /><br /></pre> <br /><br /><br />Cette transformation restera très rapide même avec un très grand nombre de lignes<br /><br />