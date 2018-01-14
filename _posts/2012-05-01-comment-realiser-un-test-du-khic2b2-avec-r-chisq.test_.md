---
ID: 1721
post_title: 'Comment réaliser un test du khi² avec R ? : chisq.test'
author: anonyme
post_excerpt: ""
layout: post
permalink: 'https://abcdr.guyader.pro/comment-realiser-un-test-du-khi%c2%b2-avec-r-chisq.test/'
published: true
post_date: 2012-05-01 21:58:38
tags: [ ]
categories:
  - Test
---
R intégre e natif tout ce qu'il faut pour réaliser un test de khi2 vous pouvez utilser la fonction <strong>chisq.test</strong><br />Prenons un cas courant de comparaison de deux variables qualitative : on veut savoir s'il existe une différence d'incidence dans un groupe donnée entre les hommes et le femmes pour une maladie donnée.<br /><br />50 hommes dont 15 malades<br />70 femmes dont 20 malades<br /><br /> <pre lang='rsplus'><br /> mat&lt;-matrix(c(15,35,20,50), 2, 2, byrow=TRUE) <br />chisq.test(mat)<br /></pre> <br />dans le cas présent on a une p.value de 0,97, on ne peut donc vraiment pas rejeter l'hypothese d'equivalence entre les hommes et les femmes.