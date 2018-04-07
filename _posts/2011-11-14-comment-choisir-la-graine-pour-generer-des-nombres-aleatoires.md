---
ID: 723
post_title: 'Comment choisir la graine pour générer des nombres aléatoires dans R ? : set.seed'
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-choisir-la-graine-pour-generer-des-nombres-aleatoires/
published: true
post_date: 2011-11-14 20:09:03
---
Lorsqu'on génère des nombres aléatoires il est souvent utile de pouvoir choisir la graine (pour resimuler exactement un modèle stochastique par exemple).<br /><br />Sous R ceci se fait via la fonction<strong> set.seed("nombre entier")</strong>.<br /><br /> <pre><code><br /><br />set.seed(3)<br />runif(3)<br /><br />set.seed(4567)<br />runif(3)<br /><br />set.seed(3)<br />runif(3)<br /><br /></code></pre>