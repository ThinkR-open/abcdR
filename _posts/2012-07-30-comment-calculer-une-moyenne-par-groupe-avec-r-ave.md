---
ID: 1861
post_title: >
  Comment calculer une moyenne par groupe
  avec R ? ave
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-calculer-une-moyenne-par-groupe-avec-r-ave/
published: true
post_date: 2012-07-30 08:29:13
---
Je viens de découvrir la fonction<strong> ave</strong>.. il s'agit d'une fonction<strong> extremement rapide</strong> qui permet de calculer une moyenne (ou autre chose..) par groupe. elle est trés efficace par rapport à des combinaisons de <strong>by</strong> et autres <strong>do.call</strong><br /><br />
 <pre><code><br /><br /># mettons nous dans un cas ou nous voulons calculer le score moyenne des hommes d'une part , et des femme d'autre part<br /> data&lt;-data.frame(cbind(c(rep("homme",4),rep("femme",5)),c(1:4,3:7)))<br />names(data)&lt;-c("genre","score")<br />data$score&lt;-as.numeric(data$score)<br />data<br />attach(data)<br />cbind(data,ave(score,genre)) <br /><br /></code></pre>
<br /><br />L'efficacité d'<strong>ave</strong> se retrouve surtout sur les tres gos jeux de données...<br /><br />