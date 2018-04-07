---
ID: 1031
post_title: >
  Comment passer des paramètres par
  défaut à une fonction dans R?
author: marc
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/passer-des-parametres-par-defaut-a-une-fonction/
published: true
post_date: 2011-12-13 06:40:20
---
Pour éviter de se tromper dans l'ordre où les paramètres sont passés à une fonction, il vaut mieux les nommer. Ainsi l'ordre n'importera pas. Cela permet en plus de passer une valeur par défaut.<br /><br /><br />  <pre><code><br /><br />essai&lt;-function(par1=3, par2=20) {<br />print(par1)<br />print(par2)<br />}<br /><br />essai()<br /><br />#[1] 3<br />#[1] 20<br /><br />essai(1,2)<br /><br />#[1] 1<br />#[1] 2<br /><br />essai(par1=1)<br /><br />#[1] 1<br />#[1] 20<br /><br />essai(par2=10)<br /><br />#[1] 3<br />#[1] 10<br /><br />essai(par2=10, par1=4)<br /><br />#[1] 4<br />#[1] 10<br /></code></pre>