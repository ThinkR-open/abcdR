---
ID: 3159
post_title: >
  Comment convertir un nombre de secondes
  en une période et une période en
  nombre de secondes ? seconds_to_period,
  period_to_seconds
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-convertir-un-nombre-de-secondes-en-une-periode-et-une-periode-en-nombre-de-secondes-seconds_to_period-period_to_seconds/
published: true
post_date: 2015-07-17 13:57:32
---
<p>La fonction <b>seconds_to_period()</b>, du package <b>lubridate</b>, permet de convertir un nombre de secondes en une période, et la fonction<b> period_to_seconds() </b>permet de convertir une période en un nombre de secondes.</p><p> <pre><code><br />seconds_to_period(60)</p><p>[1] "1M 0S"</p><p>seconds_to_period(150)</p><p>[1] "2M 30S"</p><p>seconds_to_period(3600)</p><p>[1] "1H 0M 0S"</p><p>seconds_to_period(4989000)</p><p>[1] "57d 17H 50M 0S"</p><p> </p><p> </p><p>period_to_seconds(seconds_to_period(60))</p><p>[1] 60</p><p>period_to_seconds(seconds_to_period(150))</p><p>[1] 150</p><p>period_to_seconds(seconds_to_period(3600))</p><p>[1] 3600</p><p>period_to_seconds(seconds_to_period(4989000))</p><p>[1] 4989000</p><p></code></pre>   </p>