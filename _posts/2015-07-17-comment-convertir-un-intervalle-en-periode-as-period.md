---
ID: 3157
post_title: >
  Comment convertir un intervalle en
  periode ? as.period
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-convertir-un-intervalle-en-periode-as-period/
published: true
post_date: 2015-07-17 12:26:35
---
<p>La fonction <b>as.period()</b>, du package <b>lubridate</b>, permet de convertir un intervalle en periode selon différentes unités.</p><p> </p><p> <pre><code><br />library(lubridate)</p><p> </p><p>span &lt;- new_interval(as.POSIXct("2009-01-01"), as.POSIXct("2010-02-02 01:01:01"))</p><p>#On crée un nouvel intervalle</p><p>span</p><p>[1] 2009-01-01 CET--2010-02-02 01:01:01 CET</p><p> </p><p>as.period(span, unit = "years")</p><p>[1] "1y 1m 1d 1H 1M 1S"</p><p> </p><p>as.period(span, units = "month")</p><p>[1] "13m 1d 1H 1M 1S"</p><p> </p><p>as.period(span, units = "day")</p><p>[1] "397d 1H 1M 1S"<br /><br /></p><p>as.period(span, units = "second")<br />[1] "34304461S"<br /> </code></pre>  </p><p> </p>