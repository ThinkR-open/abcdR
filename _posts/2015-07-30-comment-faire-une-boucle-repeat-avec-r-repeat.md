---
ID: 3200
post_title: >
  Comment faire une boucle repeat avec R ?
  repeat
author: Helene F
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-faire-une-boucle-repeat-avec-r-repeat/
published: true
post_date: 2015-07-30 10:06:58
tags: [ ]
categories:
  - fonctions utiles
---
<p> <pre lang='rsplus'><br /><br />i &lt;- 0</p><p>repeat {</p><p>     i &lt;- i + 1;</p><p>     print(i);</p><p>     if (i >= 10) break;</p><p>}</p><p> </p><p>[1] 1</p><p>[1] 2</p><p>[1] 3</p><p>[1] 4</p><p>[1] 5</p><p>[1] 6</p><p>[1] 7</p><p>[1] 8</p><p>[1] 9</p><p>[1] 10</p><p></pre> </p>