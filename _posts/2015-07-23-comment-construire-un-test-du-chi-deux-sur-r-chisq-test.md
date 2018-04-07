---
ID: 3187
post_title: >
  Comment faire un test du chi-deux sur R
  ? chisq.test
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-construire-un-test-du-chi-deux-sur-r-chisq-test/
published: true
post_date: 2015-07-23 14:13:16
---
<p>Le test du khi2 permet de tester l’indépendance de deux variables pour cela nous calculons la valeur de la statistique  ainsi que la probabilité critique.</p><p> </p><p>Pour pouvoir réaliser ce test il est nécessaire d’avoir un échantillonnage aléatoire dans chaque échantillon et que chaque effectif théorique soit supérieur ou égal à 5.</p><p> </p><p>Pour effectuer ce test nous utilisons la fonction <b>chisq.test()</b>.</p><p> </p><p>Exemple :</p><p>Nous nous demandons si nombre de fumeurs dépend de l'âge ou non, c’est-à-dire : l’âge influence t’il la propension à fumer?</p><p> <pre><code> </p><p>mat&lt;-matrix(c(15,10,15,20,10,10),3)</p><p>dimnames(mat) &lt;- list(c("15-30","31-45","46-70") ,c("oui","non"))</p><p> </p><p>mat</p><p>      oui non</p><p>15-30  15  20</p><p>31-45  10  10</p><p>46-70  15  10</p><p> </p><p>chisq.test(mat)</p><p> </p><p>#        Pearson's Chi-squared test</p><p> </p><p>#data:  mat</p><p>#X-squared = 1.7143, df = 2, p-value = 0.4244</p><p></pre> </p><p>La p-value est supérieure à 0.05, nous ne pouvons donc pas considérer que les variables sont liées.</p>