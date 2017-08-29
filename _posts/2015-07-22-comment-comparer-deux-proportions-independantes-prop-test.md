---
ID: 3181
post_title: >
  Comment comparer deux proportions
  indépendantes ? prop.test
author: Helene F
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-comparer-deux-proportions-independantes-prop-test/
published: true
post_date: 2015-07-22 14:02:59
---
<p>La fonction <b>prop.test() </b>permet de savoir si deux proportions mesurées sont identiques ou non.</p><p> </p><p>Pour réaliser ce test il est nécessaire d’avoir un échantillonnage aléatoire dans chaque échantillon, que chaque effectif soit supérieur ou égal à 5 et que tous les échantillons soient indépendants.</p><p> </p><p>Exemple : On se demande si la proportion de fumeuses est différente de celle des fumeurs</p><p> <pre lang='rsplus'></p><p>mat&lt;-matrix(c(15,10,15,20),2)</p><p>dimnames(mat) &lt;- list(c("homme","femme") ,c("oui","non"))</p><p> </p><p>&gt; mat</p><p>      oui non</p><p>homme  15  15</p><p>femme  10  20</p><p> </p><p>#On obtient une matrice avec 4 effectifs suppérieurs à 5</p><p> </p><p>prop.test(mat)</p><p> </p><p>#        2-sample test for equality of proportions with continuity</p><p>#        correction</p><p> </p><p>#data:  mat</p><p>#X-squared = 1.0971, df = 1, p-value = 0.2949</p><p>#alternative hypothesis: two.sided</p><p>#95 percent confidence interval:</p><p># -0.1125679  0.4459012</p><p>#sample estimates:</p><p>#   prop 1    prop 2</p><p>#0.5000000 0.3333333</p><p></pre>   </p><p>La p-value est supérieure à 0.05, nous considérons donc que les proportions ne sont pas significativement différentes : la proportion de fumeuses n’est pas significativement différente de celle des fumeurs.</p>