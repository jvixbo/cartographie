lire_un_fichier <- function(fichier,ordre_var) {
  data <- readxl::read_xlsx(fichier)
  
  #!str_detect pour mettre la négation
  if(!str_detect("Code station", names(data)))
  {
    data <- data %>% 
      mutate(`Code station` = NA)
  }
  
  data <- data %>% 
  select(ordre_var)
  
  return(data)
}

data2 <- lire_un_fichier(xlsx_files[2],ordre_var=variables)
data7 <- lire_un_fichier(xlsx_files[7],ordre_var=variables)

identical(names(data2), names(data7))

data <- readxl::read_xlsx(xlsx_files[7])
file.exists(xlsx_files[7])