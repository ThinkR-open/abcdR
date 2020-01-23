---
ID: 718
post_title: >
  Comment tester la conformité à une loi
  avec le test de Kolmogorov-Smirnov ?
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-tester-la-conformite-a-une-loi-avec-le-test-de-kolmogorov-smirnov/
published: true
post_date: 2011-11-14 16:09:23
tags: [ ]
categories:
  - Test
---
Le test de Kolmogorov-Smirnov est un test d'hypothèse utilisé pour décider si un échantillon suit une loi de probabilité donnée ou si deux échantillons suivent la même loi.<br /><br />Sous R on peut réaliser ce test avec la fonction <strong>ks.test()</strong><br /><br /> <pre><code><br /><br />#on crée des échantillons<br /><br />a&lt;-rnorm(100,mean=0,sd=1)<br /><br />b&lt;-rgamma(100,shape=1,rate=0.8)<br /><br />c&lt;-rnorm(50,mean=0,sd=1)<br /><br />#a et b proviennent-ils de la même loi?<br /><br />ks.test(a,b)#p=7.5e-11 on rejette l'hypothèse nulle<br /><br />#a et c?<br /><br />ks.test(a,c)#p=0.35 on accepte l'hypothèse nulle<br /><br />#a provient-il d'une loi gamma avec 3 comme paramètre de forme et 2 pour le taux?<br /><br />ks.test(a,"pgamma",3,2)#p value très faible on rejette l'hypothèse<br /><br />#a provient-il d'une loi normale?<br /><br />ks.test(a,"pnorm")#p=0.13 on accepte l'hypothèse<br /><br /> <br /></code></pre> <br /><br />Comme pour tous les tests, faites bien attention à ce que veut réellement dire ce test, prenez du recul sur la notion de p-value et ne basez pas vos analyses sur ce test seul !!!