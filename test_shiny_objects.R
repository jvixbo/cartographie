#######################HOME##########################

home <- tabItem(tabName = "home",
                h2("Salutations !"),
                p("Welcome to jvixbo's dashboard !",
                  br(), # Sert à revenir à la ligne 
                  "Biology student, fish and phasm lover"))

#######################LOL GOALS#####################

lol_goals <- tabItem(tabName = "lol",
                     h2("Goals - League of Legends"),
                     fluidRow(
                       infoBox("LOL - Solo/Duo", "Silver III - 48 LP", icon = icon("star", lib="glyphicon"), color = "aqua"), infoBoxOutput("progressBox"),
                       infoBoxOutput("winrate")
                     ),
                     
                     fluidRow(
                       infoBox("LOL - Flex", "Silver I - 75 LP", icon = icon("star-empty", lib="glyphicon"), color = "aqua"),
                       infoBoxOutput("progressBox2"),
                       infoBoxOutput("winrate2")
                     ),
                     fluidRow(
                       infoBox("Wild Rift", "Platinium 1", icon = icon("phone", lib="glyphicon"), color = "teal"),
                       infoBoxOutput("progressBox3"),
                       infoBoxOutput("winrate3")
                     )
)

#######################RPG###########################

rpg <- tabItem(tabName = "rp",
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
                  "- Khada Jhin, the Virtuoso"))
