---
ID: 3174
post_title: >
  Comment tester la significativité du
  coefficient de corrélation associé à
  deux variables ? cor.test
author: Helene F
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-mesurer-le-coefficient-de-correlation-entre-deux-variables-cor-test/
published: true
post_date: 2015-07-21 14:08:34
tags: [ ]
categories:
  - Test
---
<p>Le coefficient de corrélation, mesuré par la fonction <strong>cor()</strong>, permet de savoir à quel point deux variables quantitatives sont corrélées. Il existe 3 méthodes pour tester la significativité de ce coefficient : la méthode de « Pearson », de « Kendall », et de « Spearman ».</p><p> </p><p>Pour réaliser ce test il est nécessaire d’avoir un échantillonnage aléatoire et qu’il n’y ait pas de données manquantes. Si les deux variables suivent une loi Normale et que leur relation est supposée linéaire on utilise la méthode de « Pearson ». Si la relation entre les deux variables est supposée monotone on utilise la méthode de « Kendall » ou de « Spearman ».</p><p><br />Nous utilisons les fonctions suivantes :</p><p>Soit x la première variable et y la deuxième variable.</p><p> </p><p>Pour la méthode de "Pearson", <b>cor.test(x,y,method= "pearson")</b></p><p>Pour la méthode de "Kendall", <b>cor.test(x,y,method= "kendall")</b></p><p>Pour la méthode de "Spearman", <b>cor.test(x,y,method= "spearm")</b>                                      <b></b></p><p>               </p><p>Exemple :</p><p> <pre lang='rsplus'></p><p>x &lt;- c(44.4, 45.9, 41.9, 53.3, 44.7, 44.1, 50.7, 45.2, 60.1)</p><p>y &lt;- c( 2.6,  3.1,  2.5,  5.0,  3.6,  4.0,  5.2,  2.8,  3.8)</p><p> </p><p>cor.test(x, y, method = "kendall")</p><p>#        Kendall's rank correlation tau</p><p> </p><p>#data:  x and y</p><p>#T = 26, p-value = 0.1194</p><p>#alternative hypothesis: true tau is not equal to 0</p><p>#sample estimates:</p><p>#      tau</p><p>#0.4444444</p><p># tau est le coefficient de corrélation de Kendall</p><p> </p><p> </p><p> </p><p>cor.test(x, y, method = "spearm")</p><p>#        Spearman's rank correlation rho</p><p> </p><p>#data:  x and y</p><p>#S = 48, p-value = 0.0968</p><p>#alternative hypothesis: true rho is not equal to 0</p><p>#sample estimates:</p><p>#rho</p><p>#0.6</p><p># rho est le coefficient de corrélation de Spearman</p><p> </p><p> </p><p>cor.test(x, y, method = "pearson")</p><p>#        Pearson's product-moment correlation</p><p> </p><p>#data:  x and y</p><p>#t = 1.8411, df = 7, p-value = 0.1082</p><p>#alternative hypothesis: true correlation is not equal to 0</p><p>#95 percent confidence interval:</p><p># -0.1497426  0.8955795</p><p>#sample estimates:</p><p>#      cor</p><p>#0.5711816</p><p># cor est le coefficient de corrélation de Pearson</p><p></pre>  </p>