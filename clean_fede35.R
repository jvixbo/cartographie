

clean_fede35 <- function(df_brut, crs_init = 2154, crs_fin = 4326) {
  
  # coords <- get_coords(sf_obj = df_brut,
  #                      crs_init = crs_init,
  #                      crs_fin = crs_fin)
  df <- df_brut %>%
    # st_drop_geometry() %>%
    # bind_cols(coords) %>%
    # pivot_longer(cols = ABH:VAX,
    #              names_to = "code_espece",
    #              values_to = "effectif") %>%
    
    mutate(
      code_exutoire = NA, 
      code_station = NA, 
      date_peche = Date,
      annee = str_sub(date_peche, 1, 4),
      annee = as.integer(annee),
      source_donnee = "Fede 35",
      code_espece = Espèce,
      effectif = str_to_upper(`Nb Individus`),
      type_peche = Type,
      localisation = `Cours d'eau`, 
      x_wgs84 = X,
      y_wgs84 = Y) %>%
  
    select(
      code_exutoire,
      code_station,
      localisation,
      x_wgs84,
      y_wgs84,
      date_peche,
      annee,
      source_donnee,
      type_peche,
      code_espece,
      effectif
    ) %>%
  
    mutate_at(vars(code_station, localisation, date_peche),
              as.character)
  
  df
  
}

clean_fede35(fede35)
