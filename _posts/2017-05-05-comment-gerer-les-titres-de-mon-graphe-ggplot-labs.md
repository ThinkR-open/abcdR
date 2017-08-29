---
ID: 3357
post_title: >
  Comment gérer les titres de mon graphe
  ggplot ? labs()
author: Colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-gerer-les-titres-de-mon-graphe-ggplot-labs/
published: true
post_date: 2017-05-05 09:26:59
---
La fonction labs(), à utiliser pendant la construction de votre ggplot, vous permet d'intégrer titre, sous-titres, et légendes. 

<pre lang="rsplus">ggplot(iris, aes(Sepal.Width, Sepal.Length)) +
  geom_point() + 
  labs(title = "Mon titre", 
       subtitle = "Mon sous titre \n sur deux lignes", 
       caption = "Ma légende", 
       x = "Mon axe x",
       y = "Mon axe y")</pre>