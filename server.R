# Define server logic required to draw a histogram
server <- function(input, output, session) {
  
  observeEvent(input$btClassification, {
    classification = sendTestData()
    output$proba = "asd"
      output$image <- renderImage({
        
        if(classification$class){
          srcImage = "www/like.png"
        }else{
          srcImage = "www/dislike.png"
        }
        
        return(list(
          src = srcImage,
          contentType = "image/png",
          alt = "Classificação"
        ))
      }, deleteFile = FALSE)
      
      
  })
  
}