
library(shiny)
library(shinydashboard)

# Define UI ----
ui <- fluidPage(
  headerPanel(
  titlePanel("Gobierno Digital: Mejorando el transporte en Panamá")
  ),
 
  sidebarLayout(
    sidebarPanel(
      img(src = "/mibus.png", height = 140, width = 160),
      
      h2("Objetivo General"),
      helpText("Desarrollar un modelo de monitoreo vehicular inteligente en tiempo real para mejorar la distribución y logística del transporte panameño."),
      #sliderInput("year",
      #            "Año",
      #            min = 2021,
      #            max = 2040,
      #            step = 1,
      #            sep = "",
      #            value = 2022),
      selectInput("select", h3("Selecciona una carretera"), 
                  choices = list("Carretera Transístmica" = 1, "Vía Ricardo J. Alfaro" = 2,
                                 "Carretera Panamericana" = 3), selected = 1),

      dateInput("date", h3("Indique un día"), value = "2021-02-12"),
      sliderInput("slider1", h3("Seleccione una hora"),
                  min = 0, max = 24, value = 7)
    
    ),
    mainPanel(
      h1("Tráfico actual "),
      fluidRow(
        column(5, h3("Número de vehículos actuales:"), 
                     h2("150 vehículos")),
        column(5, h3("Velocidad media de vehículos actuales:"), 
                     h2("45 km/h "))
      ),
      img(src = "/panamaCentro.png", height = 500, width = 1000),
      fluidRow(
        column(4, img(src = "/barChart.png", height = 400, width = 600)),
        column(4, img(src = "/lineChart.png", height = 400, width = 550))
        ),
      strong("Desarrollado por el grupo Gobierno Digital conformado por: Prof: Juan Saldaña, Prof: Víctor López, Valerie Tuñón, Anel Atencio, Fernando Cutire")
    )
  )
)

uiShiny <- dashboardPage(
  dashboardHeader(),
  
  dashboardSidebar(),
  
  dashboardBody()

  )


# Define lógica del servidor ----
server <- function(input, output) {

}

# Corre la aplicación ----
shinyApp(ui = ui, server = server)

