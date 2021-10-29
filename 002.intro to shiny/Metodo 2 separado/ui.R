library(shiny)

shinyUI(
  fluidPage(
    titlePanel("shiny 2"),
    sidebarLayout(
      sidebarPanel(
        selectInput(
          "varx",
          label = "Elige la variable X",
          choices = list(
            "Engine Displacement in litres" = "displ",
            "Number of cylinders" = "cyl",
            "City miles per gallon" = "cty",
            "Highway miles per gallon" = "hwy")
          ),
        selectInput(
          "vary",
          label = "Elige la variable Y",
          choices = list(
            "Engine Displacement in litres" = "displ",
            "Number of cylinders" = "cyl",
            "City miles per gallon" = "cty",
            "Highway miles per gallon" = "hwy")
        )
        )
      ,mainPanel(
        textOutput("subtitle"),
        plotOutput("graph")
      )
    )
  )
)
