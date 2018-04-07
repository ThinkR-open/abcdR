---
ID: 3145
post_title: >
  Comment arrondir une date en fonction de
  différentes unités ? ceilling_date,
  floor_date, round_date
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-arrondir-une-date-en-fonction-de-differentes-unites-ceilling-date-floor-date-round-date/
published: true
post_date: 2015-07-16 08:26:50
---
<p>La fonction <b>ceilling_date()</b>, du package <b>lubridate</b>, permet d’arrondir une donnée de type « date » à la date la plus grande en fonction de différentes unités :</p><p> <pre><code></p><p>library(lubridate)</p><p> </p><p>x &lt;- as.POSIXct("2009-08-03 12:01:57.23")</p><p> </p><p>ceiling_date(x, "second")</p><p>[1] "2009-08-03 12:01:58 CEST"</p><p>#On arrondit à la seconde la plus grande</p><p> </p><p>ceiling_date(x, "minute")</p><p>[1] "2009-08-03 12:02:00 CEST"</p><p>#On arrondit à la minute la plus grande</p><p> </p><p>ceiling_date(x, "hour")</p><p>[1] "2009-08-03 13:00:00 CEST"</p><p>#On arrondit à l'heure la plus grande</p><p> </p><p>ceiling_date(x, "day")</p><p>[1] "2009-08-04 CEST"</p><p>#On arrondit au jour le plus grand</p><p> </p><p>ceiling_date(x, "week")</p><p>[1] "2009-08-09 CEST"</p><p> </p><p>ceiling_date(x, "month")</p><p>[1] "2009-09-01 CEST"</p><p> </p><p>ceiling_date(x, "year")</p><p>[1] "2010-01-01 CEST"</p><p></pre>   </p><p>De même, la fonction <b>floor_date()</b>, permet d’arrondir une date à la date la plus petite, et la fonction <b>round_date()</b>, permet d’arrondir une date à la date la plus proche en fonction de différentes unités.</p><p> <pre><code></p><p>library(lubridate)</p><p> </p><p>x1 &lt;- as.POSIXct("2009-08-03 12:01:57.23")</p><p>x2 &lt;- as.POSIXct("2009-08-03 12:42:57.23")</p><p> </p><p>floor_date(x1, "hour")</p><p>[1] "2009-08-03 12:00:00 CEST"</p><p>#On arrondit à l'heure la plus petite</p><p> </p><p>round_date(x1, "hour")</p><p>[1] "2009-08-03 12:00:00 CEST"</p><p>round_date(x2, "hour")</p><p>[1] "2009-08-03 13:00:00 CEST"<br /> #On arrondit à l'heure la plus proche <br /> </pre>    </p>