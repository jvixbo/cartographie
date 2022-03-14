#Test création de fonction en suivant le tutoriel

#Exemple: conversion de °F en °C
fahrenheit_to_celsius <- function(temp_F) {
  temp_C <- (temp_F - 32) * 5 / 9
  return(temp_C)
}

#Tests voir si ça fonctionne
fahrenheit_to_celsius(32)
fahrenheit_to_celsius(212) #température d'ébullition de l'eau

#On tente une converstion de °C en °K
celsius_to_kelvin <- function(temp_C) {
  temp_K <- temp_C + 273.15
  return(temp_K)
}
celsius_to_kelvin(0)

#On essaye de faire une fonction composée à partir des deux préfédentes
#Conversion de °F en °K
fahrenheit_to_kelvin <- function(temp_F) {
  temp_C <- fahrenheit_to_celsius(temp_F)
  temp_K <- celsius_to_kelvin(temp_C)
  return(temp_K)
}
fahrenheit_to_kelvin(212)

#Quelques tests persos de fonctions

rabadon <- function(ap) {
  ap_final <- ap*(1+40/100)
  return(ap_final)
}

rabadon(253)


veigar_op <- function(kills, minions, items) {
  ap_veigar <- (kills*5 + minions*2 + items)*(1+40/100)
  return(ap_veigar)
}

#on met: le nombre de kills, le nombre de minions tués, l'ap qu'il a avec ses items et runes
veigar_op(21,200,499)
