#Ne pas oublier de changer le working directory, ça bug à chaque fois et ça me l'enlève

library(sf)
library(tidyverse)
library(dplyr)
library(mapview)
library(ggplot2)
library(cartography)
library(leaflet)
library(leafpop)



#Mettre le chemin complet à partir du working directory (sans le mettre dans la liste) sinon ça indique que le fichier n'existe pas
sp_total<-st_read("Raw Data/ATLAS_POISSONS/ATLAS_SIG/atlas_piscicole_bretagne_20200220/layers/bv_20200220_Especes_totales.shp")

# Visualiser les données sans la géométrie (utile si trop lourd, notamment pour les polygones)
sp_total %>% #ctlr + shift + M pour faire l'opérateur pipe 
  st_drop_geometry() %>% 
  View()

#Affiche les titres des colonnes
names(sp_total)

peche_dir<-st_read("Raw Data/ATLAS_POISSONS/ATLAS_SIG/atlas_piscicole_bretagne_20200220/layers/dir_compte_peche.shp")

exu<-st_read("Raw Data/ATLAS_POISSONS/donnees_geographiques_reference/exutoires_BV_20200128.shp")

peche_dir %>% 
  st_drop_geometry() %>% 
  View()

wama<-st_read("Raw Data/ATLAS_POISSONS/donnees_geographiques_reference/peches_WAMA_BZH_1978_2019_20200215.shp")

AELB<-st_read("Raw Data/ATLAS_POISSONS/donnees_geographiques_reference/peches_AELB_BZH_2016_2018_20200215.shp")

fede<-st_read("Raw Data/ATLAS_POISSONS/donnees_geographiques_reference/peche_fede_56_20200215.shp")

geo15<-st_read("Raw Data/ATLAS_POISSONS/donnees_geographiques_reference/peche_georect_sd_2015_2019_20200215.shp")

geo18<-st_read("Raw Data/ATLAS_POISSONS/donnees_geographiques_reference/peche_georect_sd_2015_2019_20210818.shp")

ASPE<-st_read("Raw Data/ATLAS_POISSONS/donnees_geographiques_reference/peche_ASPE_20200215.shp")

