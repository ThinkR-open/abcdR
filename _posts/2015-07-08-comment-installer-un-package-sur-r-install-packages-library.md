---
ID: 3087
post_title: 'Comment installer un package sur R ? : install.packages, library'
author: Helene F
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-installer-un-package-sur-r-install-packages-library/
published: true
post_date: 2015-07-08 15:03:25
---
<p>La fonction <strong>install.packages()</strong> permet de télécharger des packages et de les installer sur l’ordinateur (On ne fait cela qu'une fois). La fonction <strong>library()</strong> permet ensuite de charger le package et de rendre les fonctionnalités de celui-ci disponibles (Il faut faire cela à chaque fois que l'on ouvre R).</p><p> <pre lang='rsplus'><br />install.packages("lubridate")    #On télécharge le packages "lubridate" et on l'installe</p><p>library(lubridate)                  #On charge ce package et on rend les fonctionnalités de celui-ci disponibles <br /></pre>   </p>