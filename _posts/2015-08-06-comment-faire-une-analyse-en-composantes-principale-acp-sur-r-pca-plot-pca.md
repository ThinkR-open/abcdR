---
ID: 3210
post_title: >
  Comment faire une Analyse en Composantes
  Principale (ACP) sur R ? PCA, plot.PCA
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-faire-une-analyse-en-composantes-principale-acp-sur-r-pca-plot-pca/
published: true
post_date: 2015-08-06 10:42:08
tags: [ ]
categories:
  - fonctions utiles
  - manipulation de données
---
<p>La fonction <b>PCA()</b> permet d’effectuer une ACP.</p><p> <pre><code><br />library(FactoMineR)</p><p>res_pca &lt;- PCA (iris, quali.sup=5)</p><p>#On réalise une ACP sur les 4 variables quantitatives du jeu de données iris</p><p>#La 5<sup>ème</sup> variable qui correspond au nom de la variété est qualitative</p><p>#Nous plaçons cette variable en supplémentaire,</p><p>#cette variable ne participera donc pas à la construction de l’ACP,</p><p>#mais elle apportera de l’information supplémentaire</p><p> </p><p>plot.PCA(res_pca,col.quali="blue", label="quali")</p><p>#La fonction plot.PCA contient de nombreux paramètres modulables</p><p>#ici nous choisissons la couleur de la variable qualitative</p><p>#et de cacher l’étiquette des individus grâce au paramètre « label »</p><p></code></pre>   </p><p></p><p>Pour pouvoir décrire les résultats de cette analyse nous avons besoin d’étudier les coefficients de corrélation. On obtient ces coefficients grâce à la fonction <b>dimdesc().</b></p><p> <pre><code><br />dimdesc(res_pca)<br /> </code></pre>   </p>