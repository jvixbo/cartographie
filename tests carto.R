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

#On va essayer de faire un "focus" sur les départements
mapview(sp_total, zcol = "tot_sp", at = c(0,6,13,24,39))  +
  mapview(peche_dir, burst=TRUE, zcol ="Nom_Depa", alpha.regions = 0, legend=FALSE, alpha=0)
#J'ai mis legend=FALSE sinon on a des couleurs pour chaque région
#Pas top, on voit que les bassins versants font parfois partie de plusieurs départements ou sortent carrément de Bretagne
#J'ai ajouté les départements mais je les ai mises en transparent, comme ça on peut juste zoomer sur les départements mais on ne les visualise pas vraiment


#J'essaye d'ajouter les stations de peche "Wama"
mapview(sp_total, zcol = "tot_sp", at = c(0,6,13,24,39))+
  mapview(exu, col.regions = c("#6699FF"), cex=1, alpha=0, layer.name=c("Exutoires de Bretagne"))  +
  mapview(wama, col.regions = c("#003366"), cex=2, alpha=0, layer.name=c("Stations de peches wama"))
#Ce qui serait intéressant, ce serait de faire des points plus ou moins gros en fonction de la population totale dans les stations
#J'ai ajouté les exutoirs juste pour le 
#"cex=" change la taille des points
#"alpha" détermine l'opacité du contour des points
#"Layer name" permet de renommer les couches

#On va essayer de combiner toutes les données de pêche
mapview(sp_total, zcol = "tot_sp", at = c(0,6,13,24,39))  +
  mapview(wama, col.regions = "white") +
  mapview(ASPE, col.regions = "green") +
  mapview(AELB, col.regions = "black") +
  mapview(fede, col.regions = "red") +
  mapview(geo15, col.regions = "light blue") +
  mapview(geo18, col.regions = "blue")
#Le code est trop lourd (trop de points à traiter) alors ne pas le faire !

#Exemple: Carte de présente/absence des anguilles en Bretagne (pêche dir seulement)
mapview(sp_total, zcol = "ANG", alpha.regions=0.1)+
  mapview(peche_dir, burst=TRUE, zcol ="Nom_Depa", alpha.regions = 0, legend=FALSE, alpha=0)+
  mapview(wama, zcol="ANG", alpha=0, layer.name=c("Presence-absence des anguilles"), cex=3)
#Essayer de comprendre comment on modifie les couleurs et comment on modifie le petit pop-up quand on clique
#On ne peut pas mettre deux espèces sur la même carte sans trouver comment sélectionner plutôt l'une ou l'autre car ça se chevauche et du coup on ne voit que du violet

#S'intéresser au "multilayer"