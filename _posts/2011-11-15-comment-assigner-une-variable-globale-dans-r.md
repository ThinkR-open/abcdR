---
ID: 760
post_title: >
  Comment assigner une variable globale
  dans R ?
author: Vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-assigner-une-variable-globale-dans-r/
published: true
post_date: 2011-11-15 08:49:32
tags: [ ]
categories:
  - programmer avec R
---
Une variable globale est une variable qui sera accessible partout dans R. C'est-à-dire même quand vous sourcez un fichier, peu importe votre espace de nom. Il n'est pas très propre d'utiliser cette méthode, mais cela peut rendre service.<br /><br /> <pre lang='rsplus'><br />varglob &lt;&lt;- 4 # est une variable globale<br />varpasglob &lt;- 4# n'est pas globale<br /><br /></pre>