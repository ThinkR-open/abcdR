---
ID: 4800
post_title: Comment lire un fichier raster dans R ?
author: Sébastien
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-lire-un-fichier-raster-dans-r/
published: true
post_date: 2020-09-23 08:36:38
tags:
  - raster
  - stars
  - terra
categories:
  - importation de données
  - 'sig - cartographie'
---
<!-- wp:tadv/classic-paragraph -->
<p>Un raster est un fichier géographique dont les données sont stockées sous forme d'une grille régulière. Il existe plusieurs format de stockage : GeoTiff, netcdf, asc, ...&nbsp;</p>
<p>Dans R, il existe 3 packages principaux qui peuvent vous permettre de lire un fichier raster :</p>
<ul>
<li>l'historique : {raster}</li>
<li>la version remastérisée avec du C++ : {terra}</li>
<li>un package récent avec une philosophie différente : {stars}</li>
</ul>
<h2>Lecture d'un fichier raster avec une seule couche</h2>
<p><code># récupération du chemin d'un Geotiff<br>tif &lt;- system.file("tif/L7_ETMs.tif", package = "stars")</code></p>
<p><code># lecture avec {raster}<br>r_raster &lt;- raster(tif)<br># lecture avec {terra}<br>r_terra &lt;- rast(tif)<br># lecture avec {stars}<br>r_stars &lt;- read_stars(tif)</code></p>
<h2>Lecture d'un fichier raster avec plusieurs couches</h2>
<p><code># récupération du chemin d'un Geotiff<br>multiband &lt;- system.file("ex/logo.tif", package="terra")<br></code></p>
<p><code># lecture avec {raster}<br>r_raster &lt;- stack(multiband)<br># lecture avec {terra}<br>r_terra &lt;- rast(multiband)<br># lecture avec {stars}<br>r_stars &lt;- read_stars(multiband)</code></p>
<p>Pour le choix du package à utiliser, tout dépend de votre utilisation du raster. Explorez les fonctions existantes et la doc pour choisir.<br>Si vous cherchiez <a href="https://abcdr.thinkr.fr/comment-lire-un-fichier-shp-shapefile-avec-sf-dans-r/">comment lire un fichier shapefile plutôt, c'est par là</a>.</p>
<p>&nbsp;</p>
<!-- /wp:tadv/classic-paragraph -->
