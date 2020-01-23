---
ID: 2253
post_title: >
  comment mettre à jours tous ses
  packages R ?
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-mettre-a-jours-tous-ses-packages-r/
published: true
post_date: 2013-03-27 11:18:59
tags: [ ]
categories:
  - configuration de R
---
Au bout d'un moment nous avons tous plusieurs packages installés dans R. les packages ont une vie et connaissent des mises à jour de temps. Pour installer ces mises à jour en ligne de commande il existe une fonction qui fait ca tres bien :<br /><br /> <pre><code><br />update.packages(ask = F)<br /></code></pre> <br /><br />trés pratique si on a plusieurs postes à gerer, en particulier à distance.