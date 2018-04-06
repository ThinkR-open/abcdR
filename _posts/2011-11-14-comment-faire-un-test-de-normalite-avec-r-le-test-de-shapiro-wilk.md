---
ID: 676
post_title: 'Comment faire un test de normalité avec R ? : Le test de Shapiro-Wilk'
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-faire-un-test-de-normalite-avec-r-le-test-de-shapiro-wilk/
published: true
post_date: 2011-11-14 11:23:09
---
Le test de Shapiro-Wilk teste l'hypothèse nulle selon laquelle l'échantillon est issu d'une population normalement distribuée. <br />Si la p-value est inférieure au niveau alpha fixé (souvent 0.05) alors on rejette l'hypothèse nulle et on en conclut que l'échantillon est issu d'une population qui n'est pas normalement distribuée.<br /><br />Voici un exemple avec R :<br /><br /> <pre><br /><br />#on simule des échantillons<br /><br />#d issu d'une loi normale<br />d&lt;-rnorm(100, mean = 5, sd = 3)<br /><br />#e issu d'une loi uniforme<br />e&lt;-runif(100, min = 2, max = 4)<br /><br /># on réalise un test de shapiro<br /><br />shapiro.test(d)<br />qqnorm(d) #p=0.35 on ne rejette pas l'hypothèse et on vérifie avec un QQplot<br /><br />shapiro.test(e)<br />qqnorm(e) # p=0.00036 on rejette l'hypothèse et on vérifie avec un QQplot<br /><br /></pre> <br /><br />Ce test n'est qu'un test parmi les autres, n'hésitez pas à en utiliser d'autres avant de tirer des conclusions (par exemple faire des QQplot).<br /><br />