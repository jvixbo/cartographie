library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  
  # Titre (haud à gauche)
  dashboardHeader(title = "jvixbo's dashboard",
                  dropdownMenu(type = "tasks", badgeStatus = "success",
                               taskItem(value = 85.7, color = "yellow",
                                        "Answer RP"
                               ),
                               taskItem(value = 5, color = "olive",
                                        "Master essay"
                               )
                  )
                  ),
  
  # Sidebar à gauche (menu déroulant)
  dashboardSidebar(
    sidebarMenu(
      menuItem("Home", tabName = "home", icon = icon("menu-right", lib="glyphicon")),
      menuItem("Goals League of Legends", tabName = "lol", icon = icon("menu-right", lib="glyphicon")),
      menuItem("Role Play", tabName = "rp", icon = icon("menu-right", lib="glyphicon"))
    )
  ),
  
  # Partie principale du dashboard, là où on va mettre les cartes
  dashboardBody(
    tabItems(
      # First tab content
      home,
      
      lol_goals,
      
      rpg
    ),
  ),
)


server <- function(input, output) {
  
  # ========================================================
  #                     PARTIE LOL                          
  # ========================================================
  

  
  # ========================================================
  #                     PARTIE RPG                          
  # ========================================================
  
  # Ligne 1
  # Bloc 1
  output$autrerp <- renderInfoBox({
    infoBox(
      "Zed & Cobalt", paste0("Done - 20/03/2022"), icon = icon("ok", lib="glyphicon"), 
      color = "red"
    )
  })
  
  # Bloc 2
  output$autrerp2 <- renderInfoBox({
    infoBox(
      "Thresh & Zeshin", paste0("Done - 21/03/2022"), icon = icon("ok", lib="glyphicon"),
      color = "fuchsia"
    )
  })
  
  # Ligne 2
  # Bloc 1
  output$autrerp3 <- renderInfoBox({
    infoBox(
      "Kayn & Eyden", paste0("Done - 20/03/2022"),icon = icon("ok", lib="glyphicon"),
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
