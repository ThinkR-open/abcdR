---
ID: 1756
post_title: 'Comment découper une fenetre graphique en plusieurs zones ? : mfrow'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/decouper-une-fenetre-graphique-en-plusieurs-zone/
published: true
post_date: 2012-06-13 10:47:32
---
l'option <strong>mfrow</strong> va definir comment découper la fenetre graphique cela permet de mettre plusieurs grpahique dans la même fenêtre.<br /><br /> <pre><br /> par(mfrow=c(2,2)) <br />boxplot(1:30)<br /> boxplot(10:30)<br /> boxplot(5:10)<br /> boxplot(1:3)<br /> </pre>