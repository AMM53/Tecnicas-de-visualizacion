function(input, output) {
  
  output$hist <- renderPlot({
    input$mostrar
    # hace que el gráfico se actualice cada vez que pulsamos el botón
    # (input "mostrar")
    
    n <- isolate(input$n)
    distribucion <- isolate(input$distribucion)
    
    # Esto lo hace bien, pero da error PREVIO a pulsar el botón

   # x <- switch(isolate(input$distribucion),
   #                         "norm" = rnorm(n, mean),
   #                         "unif" = runif(n),
   #                         "pois" = rpois,
   #                         "gamma" = rgamma)
    
    if (distribucion == "norm"){
      mean <- isolate(input$mean)
      sd <- isolate(input$sd)
      req(sd)
      req(mean)
      x <- rnorm(n, mean, sd)
    }
    else if (distribucion == "unif"){
      min <- isolate(input$min)
      max <- isolate(input$max)
      req(min, max, min < max)
      x <- runif(n, min, max)
    }
    else if (distribucion == "pois"){
      lambda <- isolate(input$lambda)
      req(lambda, lambda >= 0)
      x <- rpois(n, lambda)
    }
    else if (distribucion == "gamma"){
      shape <- isolate(input$shape)
      rate <- isolate(input$rate)
      req(shape, rate, shape > 0, rate > 0)
      x <- rgamma(n, shape, rate)
    }
        hist(x)
  })
  
  output$parametros <- renderUI({
    
    if (input$distribucion == "norm")
      # TagList crea un hermano dentro de un renderUI
      tagList(
      numericInput("mean",
                   label = "Media",
                   value = 5),
      numericInput("sd",
                   label = "Desviación típica",
                   value = 1))

    else if (input$distribucion == "unif")
      tagList(
        numericInput("min",
                   label = "Valor Mínimo",
                   value = 0),
              numericInput("max",
                   label = "Valor Máximo",
                   value = 1))
    
    else if (input$distribucion == "pois")
      tagList(
        numericInput("lambda",
                     label = "Lambda",
                     value = 5))
    
    else if (input$distribucion == "gamma")
      tagList(numericInput("shape",
                   label = "Shape / Forma",
                   value = 1),
              numericInput("rate",
                   label = "Scale / Escala",
                   value = 1))
    
})

}