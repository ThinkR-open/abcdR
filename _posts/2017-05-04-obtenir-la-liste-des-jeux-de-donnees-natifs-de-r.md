---
ID: 3316
post_title: 'Comment obtenir la liste des jeux de données natifs de R ? : data()'
author: Colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/obtenir-la-liste-des-jeux-de-donnees-natifs-de-r/
published: true
post_date: 2017-05-04 19:56:10
tags: [ ]
categories:
  - base indispensable
---
De nombreux jeux de données sont disponibles nativement dans R. Vous pouvez les utiliser pour découvrir le logiciel, ou de nouveaux packages ! <br /><br />Pour en avoir une liste complète : <br /><br /> <pre lang='rsplus'>data()</pre> <br /><br />Ensuite, il vous suffit de les charger en tapant leur nom. <br /><br />  <pre lang='rsplus'>data("iris")<br />iris<br /><br />data("nasa")<br />nasa</pre>