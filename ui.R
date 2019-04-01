

useShinyjs()#Utilizar javascript 

fluidPage(
  tags$head(
    useShinyjs(),useSweetAlert(),
    HTML('<meta charset="UTF-8">')
  ),
  dashboardPage(
    dashboardHeader(title = "Plataforma"),
    dashboardSidebar(
      
      sidebarMenu(
        menuItem("draft", tabName = "dataExplorerMenu"
                 , icon = icon("database", class = NULL, lib = "font-awesome"))
      )
    ),
    dashboardBody(class="containerIngestData",
                  tags$div(id="loader",class="loader"),
                  tags$h2("Classificação de comentário como críticas ou elogíos"),
      tabItems(
        tabItem(class="","dataExplorerMenu",
                box(id="boxTablePreview",class="containerTable",width = "100%",
                    collapsible = T,
                    tags$h1("Trainamento"),
                    shiny::textInput("text", "Comentário"),
                    actionButton("btClassification", "send")
                ),
                box(id="boxTablePreview",class="containerTable",width = "100%",
                    collapsible = T,
                    tags$h1("Classificação"),
                    textOutput("proba"),
                    imageOutput("image",width = 100)
                )
        )
      )
      )
)


)

