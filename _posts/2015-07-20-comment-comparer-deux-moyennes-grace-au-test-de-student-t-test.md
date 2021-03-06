---
ID: 3169
post_title: >
  Comment comparer deux moyennes avec R
  grâce au test de Student ? t.test
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-comparer-deux-moyennes-grace-au-test-de-student-t-test/
published: true
post_date: 2015-07-20 12:48:53
tags: [ ]
categories:
  - Test
---
<p>Le test de Student permet de tester l’égalité de deux moyennes. L’hypothèse H0 est « les moyennes sont égales » ou « la moyenne vaut une valeur x ».</p><p>Pour réaliser ce test il est nécessaire d’avoir un échantillonnage aléatoire de chaque individu et que les ces deux échantillons suivent une loi Normale. Pour tester l’hypothèse H0 on utilise la fonction <b>t.test().</b></p><p> <pre><code><br />data(iris)</p><p>A&lt;-subset(iris,Species=="setosa")[,2]</p><p>#On isole la 2ème colonne : la largeur des sépales</p><p></code></pre>  </p><p>On commence par tester la normalité de cette variable grâce au test de Shapiro :</p><p> <pre><code><br />shapiro.test(A)</p><p> </p><p>        Shapiro-Wilk normality test</p><p> </p><p>data:  A</p><p>W = 0.9717, p-value = 0.2715</p><p></code></pre>   </p><p>La p-value est supérieur à 0.05 on accepte donc l'hypothèse de normalité : la variable correspondant à la largeur des sépales suit donc une loi Normale.</p><p>On compare la moyenne de la variable et la valeur de 0.5cm :</p><p> <pre><code><br />t.test(x=A,mu=0.5)</p><p> </p><p>        One Sample t-test</p><p> </p><p>data:  A</p><p>t = 54.6189, df = 49, p-value &lt; 2.2e-16</p><p>alternative hypothesis: true mean is not equal to 0.5</p><p>95 percent confidence interval:</p><p> 3.320271 3.535729</p><p>sample estimates:</p><p>mean of x</p><p>    3.428</p><p></code></pre>  <br />Nous constatons que la p-value est bien supérieure à 0.05, nous rejetons donc l'hypothèse H0 : moy(Sepal.Width) = 0.05, la moyenne de cette variable est donc significativement différente de 0.05.</p><p>Nous comparons la moyenne de la longueur des sépales des espèces setosa et versicolor :</p><p> <pre><code><br />#On isole les 100 premières lignes qui correspondent aux données des espèces Setosa et Versicolor.</p><p>t.test(Sepal.Length~Species, data=iris[1:100,])</p><p> </p><p>        Welch Two Sample t-test</p><p> </p><p>data:  Sepal.Length by Species</p><p>t = -10.521, df = 86.538, p-value &lt; 2.2e-16</p><p>alternative hypothesis: true difference in means is not equal to 0</p><p>95 percent confidence interval:</p><p> -1.1057074 -0.7542926</p><p>sample estimates:</p><p>    mean in group setosa mean in group versicolor</p><p>                   5.006                    5.936</p><p></code></pre>   <br />La probabilité critique est inférieure à 0.05 (&lt; 2.2e-16). Nous rejetons donc l’hypothèse H0 : moy(Sepal.Width)setosa = moy(Sepal.Width)versicolor. Cela signifie qu’en moyenne, la longueur des sépales est significativement différente d’une espèce à l’autre. La longueur des sépales dépend donc de l’espèce de l’Iris.</p>