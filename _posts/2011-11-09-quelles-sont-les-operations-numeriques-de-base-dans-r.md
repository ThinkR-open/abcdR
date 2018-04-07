---
ID: 623
post_title: >
  Quelles sont les opérations numériques
  de base dans R ?
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/quelles-sont-les-operations-numeriques-de-base-dans-r/
published: true
post_date: 2011-11-09 15:55:56
---
R possède de nombreuses fonctions de base souvent bien utiles, en voici quelques unes.<br /><br />On crée deux vecteurs : <br /><br /> <pre><code><br /><br />a&lt;-c(1,2,3,4,5,6,7,8,9,10)<br />b&lt;-c(11,12,13,14,15,16,17,18,19,20)<br /><br /></code></pre> <br /><br />Longueur des vecteurs : <br /><br />  <pre><code><br /> <br />length(a)<br />length(b)<br /> <br /> </code></pre> <br /> <br />Minimum et maximum : <br /><br />  <pre><code><br /> <br />min(a)<br />min(b)<br />max(a)<br />max(b)<br /> <br /> </code></pre> <br /> <br />Etendue : <br /><br />  <pre><code><br /> <br />range(a)<br />range(b)<br /> <br /> </code></pre>  <br /><br />Moyenne et médiane : <br /><br />  <pre><code><br /> <br />mean(a)<br />mean(b)<br />median(a)<br />median(b)<br /> <br /> </code></pre>  <br /><br />Quantile et écart inter-quantile : <br /><br />  <pre><code><br /> <br />quantile(a)<br />quantile(b)<br />IQR(a)<br />IQR(b)<br /> <br /> </code></pre>  <br /><br />Variance et écart-type : <br /><br />  <pre><code><br /> <br />var(a)<br />var(b)<br />sd(a)<br />sd(b)<br /> <br /> </code></pre>  <br /> <br />Concaténation de a et b : <br /><br />  <pre><code><br /> <br />c&lt;-c(a,b)<br />c<br /><br />d&lt;-c(b,a)<br />d<br /> <br /> </code></pre>  <br /><br />Somme des éléments du vecteur, produit, différence des éléments consécutifs du vecteur, somme cummulée : <br /><br />  <pre><code><br /> <br />v&lt;-c(1,2,3,4)<br /><br />sum(v) #1+2+3+4<br /><br />prod(v) #1*2*3*4<br /><br />diff(v) #2-1,3-2,4-3<br /><br />cumsum(v) #1, 1+2, 1+2+3, 1+2+3+4<br /><br /> <br /> </code></pre>  <br />