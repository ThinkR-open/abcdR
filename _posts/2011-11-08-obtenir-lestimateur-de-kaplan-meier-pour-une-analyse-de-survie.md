---
ID: 556
post_title: 'Comment obtenir l&rsquo;estimateur de Kaplan-Meier pour une analyse de survie avec R ?'
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/obtenir-lestimateur-de-kaplan-meier-pour-une-analyse-de-survie/
published: true
post_date: 2011-11-08 15:13:04
---
L'estimateur de Kaplan-Meier donne la fonction de survie non paramétrique.<br />Pour l'obtenir sous R on peut utiliser le package survival.<br /><br />On se place ici dans un cas très simple où il n'y a ni censure ni troncature.<br />Pour bien comprendre le code, je vous conseille vivement de regarder la documentation du package en question!!<br /><br /><br /> <pre lang='rsplus'><br /><br /> #survival analysis<br /><br />ls()<br />rm(list=ls())<br /><br />library(survival)<br /><br />#on crée un jeu de données correspondant à des durées (étudiées dans l'analyse de survie)<br /><br /> z&lt;-c(14,14,14,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,23)<br />d&lt;-data.frame(delay=z)<br /><br />#on crée une colonne status, ici tous les individus sont "morts" pendant l'expérience <br /># mort au sens de l'analyse de survie<br /><br /> d$status&lt;-1 <br /><br /> s&lt;-survfit(Surv(d$delay,d$status)~1)<br />plot(s,main="survival function")<br /><br /><br /></pre>