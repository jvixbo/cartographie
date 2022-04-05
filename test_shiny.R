ui <- dashboardPage(
  
  # Couleur du thème
  skin = "yellow",
  
  # Titre (haut à gauche)
  dashboardHeader(title = "JVIXBO",
                  
                  tasks
                  
                  ),
  
  # Sidebar à gauche (menu déroulant)
  dashboardSidebar(
    sidebarMenu(
      menuItem("Home", tabName = "home", icon = icon("menu-right", lib="glyphicon")),
      menuItem("Goals League of Legends", tabName = "lol", icon = icon("menu-right", lib="glyphicon")),
      menuItem("Role Play", tabName = "rp", icon = icon("menu-right", lib="glyphicon")),
      menuItem("Drawing", tabName = "drawing", icon = icon("menu-right", lib="glyphicon"), badgeLabel = "new", badgeColor = "green")
    )
  ),
  
  # Partie principale du dashboard
  dashboardBody(
    tabItems(
      # First tab content
      home,
      
      # Second tab content
      lol_goals,
      
      # Third tab content
      rpg,
      
      # Fourth tab content
      art
    ),
  ),
)


server <- function(input, output) {
  
  # ========================================================
  #                     PARTIE LOL                          
  # ========================================================
  
  # Ligne 1
  # Bloc 1
  output$progressBox <- renderInfoBox({
    infoBox(
      "Road to Gold", paste0(round((956/1100)*100),"%"), icon = icon("list"),
      color = "yellow"
    )
  })
  
  #Bloc 2
  output$winrate <- renderInfoBox({
    infoBox(
      "Winrate", paste0(round((52/100)*100),"%"), icon = icon("ok", lib="glyphicon"),
      color = "olive", fill = TRUE, 
    )
  })
  
  # Ligne 2
  # Bloc 1
  output$progressBox2 <- renderInfoBox({
    infoBox(
      "Road to Platinium", paste0(round((1075/1500)*100),"%"), icon = icon("list"),
      color = "teal", 
    )
  })
  
  # Bloc 2
  output$winrate2 <- renderInfoBox({
    infoBox(
      "Winrate", paste0(round((29/55)*100),"%"), icon = icon("ok", lib="glyphicon"),
      color = "olive", fill = TRUE, 
    )
  })
  
  
  # Ligne 3
  # Bloc 1
  output$progressBox3 <- renderInfoBox({
    infoBox(
      "Road to Diamond", paste0(round((21/26)*100),"%"), icon = icon("list"),
      color = "purple",
    )
  }) 
  
  # Bloc 2
  output$winrate3 <- renderInfoBox({
    infoBox(
      "Winrate", paste0(round((17/29)*100),"%"), icon = icon("ok", lib="glyphicon"),
      color = "olive", fill = TRUE, 
    )
  })
  
  # ========================================================
  #                     PARTIE LOL                          
  # ========================================================
  
  # Ligne 1
  # Bloc 1
  output$autrerp <- renderInfoBox({
    infoBox(
      "Zed & Cobalt", paste0("Done - 03/04/2022"), icon = icon("ok", lib="glyphicon"), 
      color = "red"
    )
  })
  
  # Bloc 2
  output$autrerp2 <- renderInfoBox({
    infoBox(
      "Thresh & Zeshin", paste0("To Do - 02/04/2022"), icon = icon("remove", lib="glyphicon"),
      color = "fuchsia"
    )
  })
  
  # Ligne 2
  # Bloc 1
  output$autrerp3 <- renderInfoBox({
    infoBox(
      "Kayn & Eyden", paste0("Done - 04/04/2022"),icon = icon("ok", lib="glyphicon"),
      color = "maroon"
    )
  })
  
  output$autrerp4 <- renderInfoBox({
    infoBox(
      "Ezreal & Lyne", paste0("Done - 09/03/2022"), icon = icon("ok", lib="glyphicon"),
      color = "light-blue"
    )
  })

}

shinyApp(ui, server)
