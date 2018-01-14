---
ID: 996
post_title: 'Comment éliminer les modalités de facteurs qui n&rsquo;existent plus dans une sous-sélection d&rsquo;un jeu de données ?'
author: Stephane
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/astuce-pour-eliminer-les-modalites-de-facteurs-qui-nexistent-plus-dans-une-sous-selection-dun-jeu-de-donnees/
published: true
post_date: 2011-12-08 16:15:33
tags: [ ]
categories:
  - fonctions utiles
  - manipulation de données
  - Transformation de données
---
Si vous sélectionnez une partie d'un jeu de données de départ, parfois certaines modalités de facteurs n'existent plus mais R les considère toujours pour une ACM par exemple et vous vous retrouvez avec des modalités qui n'existent pas dans votre jeu de données.<br /><br />Voici une petite astuce pour les éliminer.<br /><br />-&gt; D'abord vous obtenez votre jeu de données à partir du jeu de données de départ qui regroupe toutes les modalités<br />-&gt; Puis l'astuce consiste à enregistrer ce jeu de données puis le recharger.<br /><br /> <pre lang='rsplus'><br />write.csv2() #pour enregistrer le jeu de données avec les modalités inutiles<br />read.csv2() #pour le recharger<br /></pre> <br /><br />-&gt; Faites ensuite un str(), les modalités inutiles n'existent plus.