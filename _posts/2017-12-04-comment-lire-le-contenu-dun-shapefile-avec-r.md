---
ID: 3492
post_title: 'Comment lire le contenu d&rsquo;un shapefile avec R ?'
author: sebastien
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-lire-le-contenu-dun-shapefile-avec-r/
published: true
post_date: 2017-12-04 15:03:17
tags: [ ]
categories:
  - 'sig - cartographie'
  - Transformation de données
---
Un shapefile est un fichier d'information géographique avec un format vectoriel. Il permet de représenter des points (e.g. villes), des lignes (e.g. routes) et des polygones (e.g. départements) avec un système d'information géographique. Le format shapefile est composé de plusieurs fichiers séparés (4 minimum):
<ul>
 	<li>data.shp : informations de géométrie (coordonnées)</li>
 	<li>data.prj : information de système de projection</li>
 	<li>data.dbf : table des attributs</li>
 	<li>data.shx : indice de position des géométries</li>
</ul
  
MODIF DEPUIS GITHUB  
  
Dans R, deux packages majeurs sont utilisés pour manipuler les données géographiques de type vectoriel:
<ul>
 	<li>{sp} : Le package de référence. Il utilise notamment la librairie {rgdal} pour lire les données géographiques, un package utilisant la librairie gdal (<a href="http://www.gdal.org/">http://www.gdal.org/</a>).</li>
 	<li>{sf} : Sorti sur CRAN en 2017, il permet de travailler avec les objets vectoriels avec toutes les fonctions du {tidyverse}. Il utilise gdal de manière native.</li>
</ul>
<h2>Lire le contenu d'un shapefile avec la librairie {sp}</h2>
Le shapefile sera lu directement avec la librairie {rgdal}. Il pourra ensuite être utilisé avec les différentes fonctions du package {sp}.
Un shapefile contient toujours plusieurs fichiers ayant tous le même nom mais une extension différente. Pour le lire avec la fonction <code>rgdal</code> de la librarie {sp} , il faut donner le dossier (<code>dsn</code>) dans lequel il est sauvé et le nom de la couche (<code>layer</code>) sans extension.
<pre lang="rsplus">library(rgdal)
library(sp)
shp &lt;- readOGR(dsn = 'chemin/vers/dossier', 
        layer = 'NomDeCoucheSansExtension')
</pre>
Vous pourrez ensuite récupérer les informations suivantes:
<ul>
 	<li>projection</li>
</ul>
<pre lang="rsplus">proj4string(shp)
</pre>
<ul>
 	<li>coordonnées des objets (pertinent pour les fichiers de points)</li>
</ul>
<pre lang="rsplus">coordinates(shp)
</pre>
<ul>
 	<li>Les données de la table attributaire sans l'information géographique</li>
</ul>
<pre lang="rsplus">shp@data
# ou
data.frame(shp)
</pre>
<h2>Lire le contenu d'un shapefile avec la librairie {sf}</h2>
Comme pour {rgdal}, la lecture du shapefile se fait en spécifiant le dossier (<code>dsn</code>) et le nom de la couche (<code>layer</code>) sans extension.
<pre lang="rsplus">library(sf)
shp &lt;- st_read(dsn = 'chemin/vers/dossier', 
        layer = 'NomDeCoucheSansExtension')
</pre>
Vous pourrez ensuite récupérer les informations suivantes:
<ul>
 	<li>projection</li>
</ul>
<pre lang="rsplus">st_crs(shp)
</pre>
<ul>
 	<li>coordonnées des objets. Les coordonnées des lignes et des polygones sont fournies avec les identifiants des lignes / sous-lignes ou polygones / sous-polygones auxquels ils appartiennent.</li>
</ul>
<pre lang="rsplus">st_coordinates(shp)
</pre>
<ul>
 	<li>Les données de la table attributaire sans l'information géographique. <em>Les opérations classiques sur les tables de données peuvent être réalisées directement l'objet <code>shp&gt;/code&gt;.</code></em></li>
</ul>
<pre lang="rsplus">data.frame(shp)
</pre>
