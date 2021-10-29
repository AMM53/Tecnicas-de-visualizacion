library(shiny)
library(ggplot2)

shinyServer(
  function(input, output) {
    
    output$subtitle <- renderText({
      paste("Scatter plot of variables ",
            input$varx,
            " and ",
            input$vary)
    })
    
    output$graph <- renderPlot({
      ggplot(mpg, aes_string(x=input$varx, y=input$vary)) +
        geom_point()
    })
  }
)
