# llamamos al paquete
library(shiny)

# creamos dos variables
ui <-
  fluidPage(
    titlePanel("Old Faithful Geyser Data"),
    sidebarLayout(
      sidebarPanel(
        sliderInput(inputId = "nbins",
                    label = "Slider Label",
                    min = 1,
                    max = 50,
                    value = 34)),
      mainPanel(
        plotOutput("hist")
)))

# 
server <- function (input, output) {
  
  output$hist <- renderPlot({
    hist(faithful$waiting,
         breaks = input$nbins)
  })
}


shinyApp(ui, server)

