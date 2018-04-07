---
ID: 3017
post_title: >
  Comment tracer un histogramme dans R ?
  hist
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-tracer-un-histogramme-dans-r-hist/
published: true
post_date: 2015-05-20 21:51:38
---
la fonction hist permet de tracer rapidement et facilement un histogramme. Cette fonction prend un vecteur en parametre. <pre><code><br />data(iris)<br /> hist(iris$Sepal.Length) <br /> hist(iris$Sepal.Length,nclass=3) <br /></code></pre>