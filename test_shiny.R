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
                               ),
                               
                               taskItem(value = 100, color = "aqua",
                                        "Task 3"
                               ),
                               taskItem(value = 100, color = "light-blue",
                                        "Task 4"
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
      tabItem(tabName = "home",
              h2("Salutations !"),
              "Welcome to jvixbo's dashboard !"),
      
      tabItem(tabName = "lol",
              h2("Goals - League of Legends"),
              fluidRow(
                infoBox("LOL - Solo/Duo", "Silver III - 39 LP", icon = icon("star", lib="glyphicon"), color = "aqua"), infoBoxOutput("progressBox"),
                infoBoxOutput("winrate")
                ),
              
              fluidRow(
                infoBox("LOL - Flex", "Argent I - 75 LP", icon = icon("star-empty", lib="glyphicon"), color = "aqua"),
                infoBoxOutput("progressBox2"),
                infoBoxOutput("winrate2")
                ),
              fluidRow(
                infoBox("Wild Rift", "Platinium 1", icon = icon("phone", lib="glyphicon"), color = "teal"),
                infoBoxOutput("progressBox3"),
                infoBoxOutput("winrate3")
                )
              ),

    
    tabItem(tabName = "rp",
            h2("Role Play"),
            
            # Petites cases mimis
            fluidRow(
              infoBox("Shen & Eiva", "Done - 20/06/2022", icon = icon("ok", lib="glyphicon") , color = "yellow"),
              infoBoxOutput("autrerp"),
              infoBoxOutput("autrerp2")
            ),
            
            fluidRow(
              infoBox("Sett & Alma", "Done - 20/03/2022", icon = icon("ok", lib="glyphicon") , color = "olive"),
              infoBoxOutput("autrerp3"),
              infoBoxOutput("autrerp4")
            ),
            
            fluidRow(
              infoBox("Karma & Hime", "To do - 24/03/2022", icon = icon("remove", lib="glyphicon") , color = "green")
            ),
)
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
      "Road to Gold", paste0(round((839/1100)*100),"%"), icon = icon("list"),
      color = "yellow"
    )
  })
  
  #Bloc 2
  output$winrate <- renderInfoBox({
    infoBox(
      "Winrate", paste0(round((38/79)*100),"%"), icon = icon("remove", lib="glyphicon"),
      color = "orange", fill = TRUE, 
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
      "Road to Diamond", paste0(round((20/26)*100),"%"), icon = icon("list"),
      color = "purple",
    )
  }) 
  
  # Bloc 2
  output$winrate3 <- renderInfoBox({
    infoBox(
      "Winrate", paste0(round((10/21)*100),"%"), icon = icon("remove", lib="glyphicon"),
      color = "orange", fill = TRUE, 
    )
  })
  
  # ========================================================
  #                     PARTIE LOL                          
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
