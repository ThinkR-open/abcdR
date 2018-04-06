---
ID: 3185
post_title: >
  Comment comparer deux proportions
  appariées sur R ? mcnemar.test
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-comparer-deux-proportions-appariees-sur-r-mcnemar-test/
published: true
post_date: 2015-07-23 08:00:44
---
<p>Le test de Mac Nemar Permet de savoir si deux proportions appariées mesurées sont identiques ou non.</p><p> </p><p>Pour pouvoir réaliser ce test il est nécessaire d’avoir un échantillonnage aléatoire dans chaque échantillon, que chaque effectif soit supérieur ou égal à 5 et que tous les individus passent d’un état à l’autre.</p><p> </p><p>Pour appliquer le test de Mac Nemar nous utilisons la fonction <b>mcnemar.test().</b></p><p> </p><p>Exemple :</p><p>Nous nous demandons si la proportion de fumeur  a varié  dans le temps ?</p><p> <pre></p><p>mat&lt;-matrix(c(20,2,10,28),2)</p><p>dimnames(mat) &lt;- list("avant" = c("fumeur", "non    fumeur"),"apres" = c("fumeur", "non fumeur"))</p><p> </p><p>mat</p><p>            apres</p><p>avant        fumeur non fumeur</p><p>  fumeur         20         10</p><p>  non fumeur      2         28</p><p> </p><p>mcnemar.test(mat)</p><p> </p><p>#        McNemar's Chi-squared test with continuity correction</p><p> </p><p>#data:  mat</p><p>#McNemar's chi-squared = 4.0833, df = 1, p-value = 0.04331</p><p></pre>  </p><p>La p-value est inférieure à 0.05, nous considérons donc que les proportions sont significativement différentes : nous constatons que la proportion de fumeur  a donc varié  dans le temps, nous pouvons ajouter que celle-ci a tendance à diminuer.</p>