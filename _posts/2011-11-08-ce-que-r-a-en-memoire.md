---
ID: 573
post_title: 'Comment voir ce qu&rsquo;a R en mémoire ?'
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/ce-que-r-a-en-memoire/
published: true
post_date: 2011-11-08 16:12:50
tags: [ ]
categories:
  - base indispensable
---
Pour regarder les objets en mémoire :<br /><br /> <pre lang='rsplus'><br />objects()<br />ls()<br /></pre> <br /><br /> Pour regarder les jeux de données et les librairies chargées:<br /> <br />  <pre lang='rsplus'><br /> search()<br /> </pre>  <br /><br />Pour tout effacer (souvent important en début de script)<br /><br /> <pre lang='rsplus'><br /><br /> rm(list=ls()) #rm pour remove<br /></pre> <br /><br />simple mais essentiel...