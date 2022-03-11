#fait une carte des espèces totales, quand on clique ça donne une liste par BV de tous les individus recensés dans le BV
mapview(sp_total) 

#fait une carte des espèces totales avec un gradient de couleur en fonction du nombre d'espèces présentes
mapview(sp_total, zcol = "tot_sp") 

#fait une carte comme précedemment mais on choisit le gradient de couleurs, ici rainbow
mapview(sp_total, zcol = "tot_sp", col.regions = rainbow)

#fait une carte comme précédemment mais permet de définir des plages pour les couleurs 0-2, 2-6, 6-13, 13-24, 24-39
mapview(sp_total, zcol = "tot_sp", at = c(0,6,13,24,39)) 

#On peut combiner des cartes en mettant + entre deux mapview
#Par exemple si on a des données sous forme de coordonnées (points)
mapview(sp_total, zcol = "tot_sp", at = c(0,6,13,24,39))  +
  mapview(exu, col.regions = "yellow")

#On va essayer de faire un "focus" sur les régions
mapview(sp_total, zcol = "tot_sp", at = c(0,6,13,24,39))  +
  mapview(peche_dir, burst=TRUE, zcol ="Nom_Depa", alpha.regions = 0.5, legend=FALSE, col.regions=c("blue", "red", "pink", "black"))
#J'ai mis legend=FALSE sinon on a des couleurs pour chaque région
#Pas top, on voit que les bassins versants font parfois partie de plusieurs départements ou sortent carrément de Bretagne

#J'essaye d'ajouter les stations de peche "Wama"
mapview(sp_total, zcol = "tot_sp", at = c(0,6,13,24,39))  +
  mapview(wama, col.regions = "white", legend=FALSE)
#Ce qui serait intéressant, ce serait de faire des points plus ou moins gros en fonction de la population totale dans les stations

#On va essayer de combiner toutes les données de pêche
mapview(sp_total, zcol = "tot_sp", at = c(0,6,13,24,39))  +
  mapview(ASPE, col.regions = "white", legend=FALSE) +
  mapview(AELB, col.regions = "black", legend=FALSE) +
  mapview(fede, col.regions = "red", legend=FALSE) +
  mapview(geo15, col.regions = "light blue", legend=FALSE) +
  mapview(geo18, col.regions = "blue", legend=FALSE) +
  