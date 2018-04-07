---
ID: 3153
post_title: >
  Comment modifier les composantes d’une
  date ? DateUpdate
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-modifier-les-composantes-dune-date-dateupdate/
published: true
post_date: 2015-07-17 07:59:58
---
<p>La fonction <b>DateUpdate()</b>, du package <b>lubridate</b>, permet de modifier les composantes d’une date : l’année, le mois… ou encore les secondes. Cette fonction renvoie la date modifiée.</p><p> <pre><code></p><p>library(lubridate)</p><p> <br />#On crée un date </p><p>date &lt;- as.POSIXct("2009-02-10")</p><p>date</p><p>[1] "2009-02-10 CET"</p><p> </p><p>update(date, year = 2010, month = 1, days = 1)</p><p>[1] "2010-01-01 CET"</p><p> </p><p>update(date, minute = 10, second = 3)</p><p>[1] "2009-02-10 00:10:03 CET"</p><p></code></pre>    </p>