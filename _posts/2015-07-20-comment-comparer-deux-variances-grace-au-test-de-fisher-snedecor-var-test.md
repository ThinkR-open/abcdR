---
ID: 3165
post_title: >
  Comment comparer deux variances grâce
  au test de Fisher-Snedecor ? var.test
author: Helene F
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-comparer-deux-variances-grace-au-test-de-fisher-snedecor-var-test/
published: true
post_date: 2015-07-20 07:34:55
---
<p>Le test de Fisher-Snedecor permet de savoir si les variances de deux populations (δ1² et δ2²) sont égales ou non. L’hypothèse H0 testée correspond à δ1²= δ2².</p><p>Pour réaliser ce test il est nécessaire d’avoir un échantillonnage aléatoire de chaque individu et que les ces deux échantillons suivent une loi Normale. On utilise pour tester cette hypothèse la fonction <b>var.test().</b></p><p> <pre lang='rsplus'><br />data(iris)</p><p>A&lt;-subset(iris,Species=="setosa")[,2]</p><p>#On isole la 2ème colonne : la largeur des sépales</p><p></pre>   </p><p>On commence par tester la normalité de cette variable grâce au test de Shapiro :</p><p> <pre lang='rsplus'><br />shapiro.test(A)</p><p> </p><p>        Shapiro-Wilk normality test</p><p> </p><p>data:  A</p><p>W = 0.9717, p-value = 0.2715</p><p></pre>   </p><p>La p-value est supérieur à 0.05 on ne rejette donc pas l'hypothèse de normalité.</p><p> <pre lang='rsplus'><br />#On isole les 100 premières lignes qui correspondent aux données des espèces Setosa et Versicolor.</p><p>var.test(Sepal.Length~Species, data=iris[1:100,])</p><p> </p><p>        F test to compare two variances</p><p> </p><p>data:  Sepal.Length by Species</p><p>F = 0.4663, num df = 49, denom df = 49, p-value = 0.008657</p><p>alternative hypothesis: true ratio of variances is not equal to 1</p><p>95 percent confidence interval:</p><p> 0.2646385 0.8217841</p><p>sample estimates:</p><p>ratio of variances</p><p>         0.4663429</p><p></pre>   </p><p>On remarque que la probabilité critique (p-value) vaut 0.008, ce qui est bien inférieur à 0.05. Nous rejetons donc l’hypothèse H0. Cela signifie que la variance de la longueur des sépales et significativement différente entre les deux espèces d’Iris étudiées. L’intervalle de confiance avec un seuil de 95% est [0.26 ; 0.82] et le quotient des variances de 0.46.</p>