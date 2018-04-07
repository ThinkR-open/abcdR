---
ID: 942
post_title: 'Calculs de moyennes sur des réplicats à partir d&#039;un data frame'
author: thomas
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/calculs-de-moyennes-sur-des-replicats-a-partir-dun-data-frame/
published: true
post_date: 2011-12-02 14:36:24
---
L'objectif est de calculer une moyenne sur des réplicats techniques/biologiques.<br />Tous les réplicats d'une condition doivent avoir le même nom.<br /><br />Tout d'abord on crée une matrice d'accueil pour les résultats.<br />Nombre de niveaux : le tableau initial contient y réplicats pour z conditions, donc y * z lignes.<br />La matrice d'accueil n'aura donc plus que z lignes.<br /><br />Prenons l'exemple du jeu de données "iris".<br />Calculons les moyennes par variété pour chaque variable.<br /><br /> <pre><code><br />data(iris)<br />niveaux&lt;-length(levels(iris$Species))<br />iris.moyenne&lt;-matrix(nrow=niveaux, ncol=(ncol(iris)-1))<br /><br />#ensuite on calcule la moyenne pour chaque condition, par variable<br /><br />for (i in 1:(ncol(iris)-1))<br />{iris.moyenne[,i]&lt;-tapply(iris[,i], iris$Species, mean)}<br /><br />#il n'y a plus qu'à améliorer l'allure des résultats<br /><br />colnames(iris.moyenne)&lt;-colnames(iris[, 1:4])<br />rownames(iris.moyenne)&lt;-levels(iris$Species)<br />iris.moyenne <br /> </code></pre> <br /><br />On peut également créer une matrice pour des écarts-types par exemple, en remplaçant la fonction dans tapply : utiliser "sd" au lieu de "mean", et changer le nom de la matrice d'accueil.<br /><br />De manière générale, les fonctions "apply" sont très puissantes pour les calculs et sont très rapides.<br /><br /><br /><br /><br />