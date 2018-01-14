---
ID: 2931
post_title: >
  Comment modifier le nombre de décimale
  dans R ? :digits
author: anonyme
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-modifier-le-nombre-de-decimale-dans-r-digits-2/
published: true
post_date: 2013-10-27 17:52:45
tags: [ ]
categories:
  - base indispensable
---
Par defaut R affiche 7 chiffres apres la virgule<br /><br /> <pre lang='rsplus'><br />pi<br /> options()$digits <br /> </pre> <br /><br />Vouc pouvez modifier cela soit de maniere ponctuelle soit en adaptant les options de R<br /><br /> <pre lang='rsplus'><br /> print(pi,digits=11) <br /> options(digits=8) <br />pi<br /> options()$digits <br /></pre>