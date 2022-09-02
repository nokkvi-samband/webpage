library(shiny)
library(fullPage)


ui <- shinyUI(navbarPage(title = img(src="https://raw.githubusercontent.com/nokkvi-samband/webpage/master/logo.jpg", height = "40px"), id = "navBar",
                         theme = "paper.css",
                         collapsible = TRUE,
                         inverse = TRUE,
                         windowTitle = "Nokkvi Dan",
                         position = "fixed-top",
                         
                         tabPanel("Home", value = "home",
                                  fullPage(
                                    fullSection(
                                      menu = "first",
                                      center = TRUE,
                                      h1("Callbacks")
                                    ),
                                    fullSection(
                                      menu = "second",
                                      center = TRUE,
                                      h3("Slice"),
                                      h1("Callbacks")
                                    ),
                                    pageSectionImage( # will not show in viewer, open in browser
                                      menu = "conclusions",
                                      img = 'https://raw.githubusercontent.com/nokkvi-samband/webpage/master/test.jpg'
                                      # h1("Image background")
                                    )
                                  )
                         )
))

server <- function(input, output){
  
  output$slide <- renderPrint({
    input$slide_origin # returns menu
  })
  
}

shinyApp(ui, server)