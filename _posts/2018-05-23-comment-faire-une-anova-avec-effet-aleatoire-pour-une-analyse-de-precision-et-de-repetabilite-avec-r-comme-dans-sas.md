---
ID: 4560
post_title: >
  Comment faire une anova avec effet
  aléatoire pour une analyse de
  précision et de répétabilité avec R
  comme dans SAS ?
author: Sébastien
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-faire-une-anova-avec-effet-aleatoire-pour-une-analyse-de-precision-et-de-repetabilite-avec-r-comme-dans-sas/
published: true
post_date: 2018-05-23 20:54:36
tags: [ ]
categories:
  - expérimentation
  - modélisation
  - SAS
---
<h2 class="title toc-ignore">Une anova avec modèle mixte comme VARCOMP dans SAS</h2>
Créons d’abord un jeu de données. On souhaite déterminer la précision et la répétabilité d’une analyse. Pour cela, la mesure est effectuée par 2 techniciens différents, sur des concentrations de produits différents sur 3 jours différents et avec 2 réplicats.
<pre class="r"><code>library(dplyr)
set.seed(42)
data &lt;- tibble(
  concentration = rep(c(10, 30, 50, 80), 3*2),
  technicien = rep(c("A", "B"), each = 3*2*2),
  jour = rep(rep(1:3, each = 2*2), 2),
  replicat = rep(1:2, times = 2*3*2)) %>%
  mutate(mesure = ifelse(
    technicien == "A",
    0.2 * concentration + rnorm(12, sd = 3),
    0.2 * concentration + rnorm(12, sd = 2)))
data</code></pre>
<pre><code># A tibble: 24 x 5
   concentration technicien  jour replicat mesure
           &lt;dbl&gt; &lt;chr&gt;      &lt;int&gt;    &lt;int&gt;  &lt;dbl&gt;
 1            10 A              1        1   7.69
 2            30 A              1        2   4.71
 3            50 A              1        1   9.23
 5            10 A              2        1   3.38
 6            30 A              2        2   4.08
 9            10 A              3        1   5.11
10            30 A              3        2   4.17
# ... with 14 more rows</code></pre>
Avec un effet aléatoire sur le jour, l’anova peut se faire avec la fonction <code>anovaVCA</code> du package {VCA}. Cette fonction, avec les paramètres par défaut, réalise exactement la même Avona Type-I que la fonction <code>PROC VARCOMP</code> dans SAS.
<pre class="r"><code>library(VCA)
# Result Variance Component Analysis
res <- anovaVCA(mesure ~ (technicien)/jour, 
                Data = as.data.frame(data))
res</code></pre>
<pre><code>Result Variance Component Analysis:
-----------------------------------

  Name            DF        SS         MS       
1 total           17.345664                     
2 technicien      1         65.789545  65.789545
3 technicien:jour 4         27.371049  6.842762 
4 error           18        969.992448 53.888469

  VC        %Total    SD       CV[%]    
1 58.800701 100       7.668162 84.168816
2 4.912232  8.354036  2.216356 24.327607
3 0*        0*        0*       0*       
4 53.888469 91.645964 7.340877 80.576405

Mean: 9.110454 (N = 24) 

Experimental Design: balanced  |  Method: ANOVA | * VC set to 0 | adapted MS used for total DF</code></pre>