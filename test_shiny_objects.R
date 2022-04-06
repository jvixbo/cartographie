library(shiny)
library(shinydashboard)

install.packages("flexdashboard")
install.packages("plotly")

#######################HOME##########################
rm(list = ls())
home <- tabItem(tabName = "home",
                h2("Salutations !"),
                p("Welcome to jvixbo's dashboard !",
                  br(), # Sert à revenir à la ligne 
                  "Biology student, fish and phasm lover"))

#######################LOL GOALS#####################

lol_goals <- tabItem(tabName = "lol",
                     h2("Goals - League of Legends"),
                     fluidRow(
                       infoBox("LOL - Solo/Duo", "Silver II - 41 LP", "jvixbo #EUW", icon = icon("star", lib="glyphicon"), color = "aqua"), infoBoxOutput("progressBox"),
                       infoBoxOutput("winrate")
                     ),
                     
                     fluidRow(
                       infoBox("LOL - Flex", "Silver I - 75 LP", "jvixbo #EUW", icon = icon("star-empty", lib="glyphicon"), color = "aqua"),
                       infoBoxOutput("progressBox2"),
                       infoBoxOutput("winrate2")
                     ),
                     fluidRow(
                       infoBox("Wild Rift", "Emerald IV", "noticemeSHENpai #2403", icon = icon("phone", lib="glyphicon"), color = "olive"),
                       infoBoxOutput("progressBox3"),
                       infoBoxOutput("winrate3")
                     ),
                     fluidRow(
                       infoBox("Shen only account", "Unranked lvl 21", "aleatorix #EUW", icon = icon("heart-empty", lib="glyphicon"), color = "maroon"),
                       infoBoxOutput("progressBox4"),
                       infoBoxOutput("winrate4")
                     )
)

#######################RPG###########################

rpg <- tabItem(tabName = "rp",
               h2("Role Play"),
               
               # Petites cases mimis
               fluidRow(
                 infoBox("Shen & Eiva", "Done - 03/04/2022", icon = icon("ok", lib="glyphicon") , color = "yellow"),
                 infoBoxOutput("autrerp"),
                 infoBoxOutput("autrerp2")
               ),
               
               fluidRow(
                 infoBox("Sett & Alma", "Done - 03/04/2022", icon = icon("ok", lib="glyphicon") , color = "olive"),
                 infoBoxOutput("autrerp3"),
                 infoBoxOutput("autrerp4")
               ),
               
               fluidRow(
                 infoBox("Karma & Hime", "To do - 24/03/2022", icon = icon("remove", lib="glyphicon") , color = "green")
               )
)
               
#######################TASKS###########################
               
tasks <- dropdownMenu(type = "tasks", badgeStatus = "success",
             taskItem(value = round(6/7*100), color = "yellow",
                      "Answer RP"
             ),
             
             taskItem(value = 5, color = "olive",
                      "Master essay"
             ),
             
             taskItem(value = round(5/31*100), color = "red",
                      "Tarotober x LOL"
             )
)

#######################ART###########################

art <- tabItem(tabName = "drawing",
               h2("« My genius will be understood. Eventually. »", 
                  br(), 
                  "- Khada Jhin, the Virtuoso"),
               fluidRow(box( title = "More 'serious' projects", height = 170, width = 3, solidHeader = TRUE, status = "primary",
                            
                            # Contenu
                            "Tarotober x League of Legends (5/31)", 
                            br(),
                            "Mommy's little monster"),
                        
                        box(title = "Mini-comics", height = 170, width = 3, solidHeader = TRUE, status = "warning",
                                
                            # Contenu
                            "A day at the zoo",
                            br(),
                            "Coming Out Part 1",
                            br(),
                            "Coming Out Part 2", 
                            br(),
                            "Coming Out Part 3", 
                            br(),
                            "Welcome to the Spirit Realm", 
                            br(),
                            "Spirits"),
                        
                        box(title = "Skinline", height = 170, width = 3, solidHeader = TRUE, status = "success",
                            
                            # Contenu
                            "Battle Academia",
                            br(),
                            "Galactikkraken",
                            br(),
                            "Crime City Nightmare / Debonair"),
                        box(title = "xx", height = 170, width = 3, solidHeader = TRUE, status = "danger",
                            
                            # Contenu
                            "xx",
                            br(),
                            "xx",
                            br(),
                            "xx")
                        )
               )
