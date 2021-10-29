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
      if (input$facet){
      ggplot(mpg) +
        geom_point(aes_string(x=input$varx, y=input$vary)) +
        facet_wrap(. ~ manufacturer)
      } else {
        ggplot(mpg) + geom_point(aes_string(
          x=input$varx,
          y=input$vary
        ))
      }
    })
  }
)
