---
ID: 573
post_title: 'Comment voir ce qu&#039;a R en mémoire ?'
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/ce-que-r-a-en-memoire/
published: true
post_date: 2011-11-08 16:12:50
---
Pour regarder les objets en mémoire :<br /><br /> <pre><code><br />objects()<br />ls()<br /></code></pre> <br /><br /> Pour regarder les jeux de données et les librairies chargées:<br /> <br />  <pre><code><br /> search()<br /> </code></pre>  <br /><br />Pour tout effacer (souvent important en début de script)<br /><br /> <pre><code><br /><br /> rm(list=ls()) #rm pour remove<br /></code></pre> <br /><br />simple mais essentiel...