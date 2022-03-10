#Mettre le chemin complet à partir du working directory (sans le mettre dans la liste) sinon ça indique que le fichier n'existe pas
sp_total<-st_read("Raw Data/ATLAS_POISSONS/ATLAS_SIG/atlas_piscicole_bretagne_20200220/layers/bv_20200220_Especes_totales.shp")

# Visualiser les données sans la géométrie (utile si trop lourd, notamment pour les polygones)
sp_total %>% #ctlr + shift + M pour faire l'opérateur pipe 
  st_drop_geometry() %>% 
  View()

#Affiche les titres des colonnes
names(sp_total)

####################################################

exu<-st_read("Raw Data/ATLAS_POISSONS/donnees_geographiques_reference/exutoires_BV_20200128.shp")

peche_dir %>% 
  st_drop_geometry() %>% 
  View()
