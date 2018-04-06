---
ID: 3179
post_title: >
  Comment comparer une proportion à une
  valeur théorique ? binom.test
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-comparer-une-proportion-a-une-valeur-theorique-binom-test/
published: true
post_date: 2015-07-22 08:01:16
---
<p>La fonction <b>binom.test()</b> réalise un test de conformité d’une proportion mesurée dans un échantillon et permet de savoir si cette proportion est différente d’une valeur cible. Pour cela on compare Pobs à Pthéo, dans un échantillon de n individus.</p><p> </p><p>Pour réaliser ce test il est nécessaire d’avoir un échantillonnage aléatoire et que la condition suivante soit respecter :</p><p>n Pobs  ≥ 5  et n (1-Pobs ) ≥ 5</p><p> </p><p>On utilise la fonction <b>binom.test(x, n, p)</b> où :</p><p>                               x : nombre de succès</p><p>                               n : nombre d’essais</p><p>                               p : probabilité théorique</p><p> </p><p>Exemple :</p><p> <pre>              </p><p># 92 « oui » sur 100 répondant est-ce différent de 80% ?</p><p># L’hypothèse H0 : la proportion est égale à 80%</p><p>binom.test(92,100,0.8)</p><p> </p><p>#        Exact binomial test</p><p> </p><p>#data:  92 and 100</p><p>#number of successes = 92, number of trials = 100, p-value = 0.001592</p><p>#alternative hypothesis: true probability of success is not equal to 0.8</p><p>#95 percent confidence interval:</p><p># 0.8484424 0.9648284</p><p>#sample estimates:</p><p>#probability of success</p><p>#                  0.92</p><p></pre>  </p><p>La probabilité critique étant très inférieure à 0.05 nous rejetons l’hypothèse que la proportion est égale à 80%.</p>