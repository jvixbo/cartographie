library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  
  # Titre (haud à gauche)
  dashboardHeader(title = "jvixbo's dashboard",
                  dropdownMenu(type = "tasks", badgeStatus = "success",
                               taskItem(value = 5, color = "yellow",
                                        "TFT Ranked - Gold"
                               ),
                               taskItem(value = 50, color = "blue",
                                        "TFT hyperroll - purple tiers"
                               ),
                               
                               taskItem(value = 50, color = "aqua",
                                        "LOL Duo - Platinium"
                               ),
                               taskItem(value = 58, color = "light-blue",
                                        "Wild Rift - Diamond"
                               )
                  )
                  ),
  
  # Sidebar à gauche (menu déroulant)
  dashboardSidebar(
    sidebarMenu(
      menuItem("Home", tabName = "home", icon = icon("dashboard")),
      menuItem("Credits", tabName = "credits", icon = icon("th"))
    )
  ),
  
  # Partie principale du dashboard, là où on va mettre les cartes
  dashboardBody(
    tabItems(
      # First tab content
      tabItem(tabName = "home",
              h2("Salutations !"),
              "Welcome to jvixbo's dashboard !"
      ),
      
      # Second tab content
      tabItem(tabName = "credits",
              h2("Credits"),
              "Full credit to the incredible jvixbo"
      )
    )
  )
)

server <- function(input, output) { }

shinyApp(ui, server)
