---
ID: 736
post_title: >
  Comment sélectionner une colonne ou une
  ligne dans un jeu de donnée avec R ?
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-selectionner-une-colonne-ou-une-ligne-dans-un-jeu-de-donnee-avec-r/
published: true
post_date: 2011-11-14 21:31:30
---
 <pre><code><br />data(iris)<br /><br />dim(iris) # ce jeu de données contient 5 colonnes et 150 lignes<br /></pre> <br /><br />Pour sélectionner une colonne ou une ligne on peut utiliser son rang ( 1er colonne, 2eme colonne...).<br /><br />  <pre><code> <br /> iris[,1] #on sélectionne la colonne 1, c'est-à-dire la première colonne<br /> iris[,3] #on sélectionne la colonne 3<br /> iris[,2:3] #on sélectionne les colonnes 2 et 3<br /> iris[,c(5,2)] #on sélectionne les colonnes 5 et 2 dans cet ordre<br /><br /> <br /> iris[1,] #on sélectionne la ligne 1<br /> iris[3,] #on sélectionne la ligne 3<br /> iris[2:3,] #on sélectionne les lignes 2 et 3<br /> iris[c(5,2),] #on sélectionne les lignes 5 et 2 dans cet ordre<br /> </pre> <br />Si on ne sélectionne qu'une seule ligne ou colonne, cela ressort un object de classe <strong>vector</strong>. S'il y a au moins 2 colonnes ou 2 lignes, on reste avec un <strong>data.frame</strong>.<br /><br />On peut aussi utiliser le nom de la colonne, cette fois-ci le résultat restera un data.frame et n'est pas dépendant de la position de la colonne ou de la ligne dans le jeux de données.<br /><br /> <pre><code><br /> names(iris) # permet de voir le nom des différentes variables/colonnes<br /> iris["Species"] # on sélectionne la colonne "Species", il faut bien mettre des guillemets car il s'agit d'une chaine de caractères<br /> iris["Sepal.Length"]<br /><br /><br /> # pour les lignes<br /> row.names(iris) # permet d'obtenir le noms des lignes<br /> iris["138",]  # donne la ligne qui s'appelle "138"<br /> row.names(iris)[100]&lt;-"hop"  # pour bien montrer qu'il s'agit d'une chaine de caractères<br /> iris["hop",]  # fonctionne<br />#mais<br /> iris["100",] # ne donne que des NA<br /> <br /> </pre> <br /><br /><br /><br />