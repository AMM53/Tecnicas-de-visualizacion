fluidPage(
  sidebarLayout(
    sidebarPanel(
      sliderInput("n", label = "Tamaño muestral",
                  min = 5, max = 500, value = 42),
      selectInput("distribucion",
                  label = "Distribución",
                  choices = list(
                    "Gaussiana" = "norm",
                    "Poisson" = "pois",
                    "Uniforme" = "unif",
                    "Gamma" = "gamma"),
                  selected = "norm"),
      actionButton("mostrar", label = "Mostrar la distribución"),
       # HUECO DE PARAMETROS
      uiOutput("parametros")
    ),
    mainPanel(
      plotOutput("hist")
    )
  )
)