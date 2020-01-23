---
ID: 3202
post_title: >
  Comment calculer la puissance d’un
  test d’égalité des moyennes de deux
  populations sur R ? power.t.test
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-calculer-la-puissance-dun-test-degalite-des-moyennes-de-deux-populations-sur-r-power-t-test/
published: true
post_date: 2015-07-30 10:14:21
tags: [ ]
categories:
  - Test
---
<p>Le test d’égalité teste l’hypothèse H0 : µ1 = µ2. La puissance d’un test est la probabilité de rejeter l’hypothèse H0 sans commettre une erreur, c’est-à-dire lorsque µ1 est effectivement  différente de µ2.</p><p> </p><p>Nous voulons donc calculer la puissance du test avec un nombre n d’individus grâce à la fonction <b>power.t.test(). </b></p><p><b> </b></p><p><b>Exemple : </b>dans une expérience nous avons un écart type de 1.7, une moyenne de 1 et on prend le seuil classique α=5%. On calcule la puissance du test avec 15 individus par groupe.</p><p> <pre><code></p><p>power.t.test(n=15, delta=1, sd=1.7, sig.level=0.05)$power</p><p>[1] 0.3430475</p><p></code></pre>    </p><p>Si l’on décide de n’utiliser que 15 individus dans l’expérimentation, alors on aura 34% de chances de détecter une différence entre les moyennes des différents groupes, ce qui est peu.</p>