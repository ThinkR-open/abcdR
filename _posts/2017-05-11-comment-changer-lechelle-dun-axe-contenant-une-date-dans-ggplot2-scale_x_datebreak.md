---
ID: 3388
post_title: 'Comment changer l&rsquo;échelle d&rsquo;un axe contenant une date dans ggplot2 ? scale_x_date(break)'
author: Colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-changer-lechelle-dun-axe-contenant-une-date-dans-ggplot2-scale_x_datebreak/
published: true
post_date: 2017-05-11 07:12:19
---
<p>Vous souhaitez ne garder que les mois, ou uniquement les années sur votre ggplot ? Vous avez envie de changer le format des étiquettes de l'axe ? Pour cela, direction la fonction scale_x_date(), qui vous permettra de personnaliser votre axe comme vous le souhaitez !

<p>Dans la majorité des cas, vous serez amené à utiliser <strong>deux arguments principaux</strong> sur <em>scale_x_date</em> (mais il faut savoir qu'il en existe au total 9) :
<ul>
	<li>date_breaks, pour la durée entre chaque point principal de l'axe</li>
	<li>date_label, pour définir le formatage de l'affichage de la légende</li>
</ul>
<pre lang="rsplus">library(tidyverse)
library(ggplot2)
library(nycflights13)
data %
  unite(date, year, month, day, sep = "-") %&gt;%
  mutate(date = lubridate::ymd(date)) %&gt;%
  group_by(date) %&gt;%
  summarise(count = n())
ggplot(data, aes(date, count)) + 
  geom_line() +
  scale_x_date(date_breaks = "2 months", date_labels = "%b")</pre>
<p>À noter que <strong>cette fonction s'adapte aux différents formats de date de votre jeu de données,</strong> ainsi qu'à l'axe que vous souhaitez modifier — <em>scale_y_date</em>, <em>scale_x_datetime</em>, <em>scale_y_datetime</em>, <em>scale_x_time</em>, <em>scale_y_time</em>.