---
ID: 2253
post_title: >
  Comment mettre à jours tous ses
  packages R ?
author: Vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-mettre-a-jours-tous-ses-packages-r/
published: true
post_date: 2013-03-27 11:18:59
tags: [ ]
categories:
  - configuration de R
---
Au bout d'un moment nous avons tous plusieurs packages installés dans R. les packages ont une vie et connaissent des mises à jour de temps. Pour installer ces mises à jour en ligne de commande il existe une fonction qui fait ca tres bien :<br /><br /> <pre lang='rsplus'><br />update.packages(ask = F)<br /></pre> <br /><br />trés pratique si on a plusieurs postes à gerer, en particulier à distance.