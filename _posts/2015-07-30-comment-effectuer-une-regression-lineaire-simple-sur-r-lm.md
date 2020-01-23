---
ID: 3204
post_title: >
  Comment effectuer une régression
  linéaire simple sur R ? lm
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-effectuer-une-regression-lineaire-simple-sur-r-lm/
published: true
post_date: 2015-07-30 10:16:06
tags: [ ]
categories:
  - fonctions utiles
---
<p>La régression linéaire simple permet de modéliser une relation linéaire entre deux variables quantitatives dans le but d’expliquer un phénomène ou de le prédire.</p><p> <pre><code></p><p>#On commence par représenter les données :</p><p>plot(Sepal.Length~Petal.Length, data=iris)</p><p>#On constate que la relation entre la largeur des sépales et celle des pétales semble être linéaire</p><p> </p><p>#On estime les paramètres :</p><p>Reg.simp &lt;- lm(Sepal.Length~Petal.Length, data=iris)</p><p> </p><p>#Call:</p><p>#lm(formula = Sepal.Length ~ Petal.Length, data = iris)</p><p> </p><p>#Residuals:</p><p>#     Min       1Q   Median       3Q      Max</p><p>#-1.24675 -0.29657 -0.01515  0.27676  1.00269</p><p> </p><p>#Coefficients:</p><p>#             Estimate Std. Error t value Pr(&gt;|t|)   </p><p>#(Intercept)   4.30660    0.07839   54.94   &lt;2e-16 ***</p><p>#Petal.Length  0.40892    0.01889   21.65   &lt;2e-16 ***</p><p>#---</p><p>#Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1</p><p> </p><p>#Residual standard error: 0.4071 on 148 degrees of freedom</p><p>#Multiple R-squared:   0.76,     Adjusted R-squared:  0.7583</p><p>#F-statistic: 468.6 on 1 and 148 DF,  p-value: &lt; 2.2e-16</p><p></code></pre>   </p><p>On obtient une matrice “Coefficients” qui contient pour chaque paramètre son estimation, son écart-type estimé et la p-value. Si la p-value est inférieure à 0.05 cela signifie que la relation entre les deux variables est significative.</p><p></p>