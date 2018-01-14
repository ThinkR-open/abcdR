---
ID: 3155
post_title: >
  Comment créer une periode à partir
  d’un temps écoulé ? period
author: Helene F
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-creer-une-periode-a-partir-dun-temps-ecoule-period/
published: true
post_date: 2015-07-17 08:03:09
tags: [ ]
categories:
  - fonctions utiles
---
<p>La fonction <b>period()</b>, du package <b>lubridate</b>, permet de créer une période à partir d’un temps écoulé en année, en mois, en jour, ou encore en seconde :</p><p> <pre lang='rsplus'></p><p>period(c(90, 5, 2), c("second", "minute", "year"))</p><p>[1] "2y 0m 0d 0H 5M 90S"</p><p> </p><p>period(c(3, 1, 2, 13, 1), c("second", "minute", "hour", "day", "week"))</p><p>[1] "20d 2H 1M 3S"<br />#Les semaines sont converties en jours (20 = 13 + 7) </p><p> </p><p>period(30, "second")</p><p>[1] "30S"<br /> </pre>   </p>