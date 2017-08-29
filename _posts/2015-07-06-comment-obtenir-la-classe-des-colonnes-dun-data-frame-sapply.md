---
ID: 3027
post_title: 'Comment obtenir la classe des colonnes d’un data.Frame? : sapply'
author: Helene F
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-obtenir-la-classe-des-colonnes-dun-data-frame-sapply/
published: true
post_date: 2015-07-06 07:34:11
---
<p>La fonction <strong>class()</strong> permet d’obtenir la classe d’un objet et la fonction <strong>sapply()</strong> permet d’appliquer la fonction class() à toutes les colonnes d'un data.frame.</p><p> <pre lang='rsplus'><p>iris #On visualise les données</p><p>sapply(iris,class)</p></pre>  <br /><p>On obtient :</p><pre lang='rsplus'> sapply(iris,class)
Sepal.Length  Sepal.Width  Petal.Length   Petal.Width      Species</p><p> "numeric"     "numeric"    "numeric"     "numeric"       "factor"</pre>