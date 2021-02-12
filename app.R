
library(shiny)
library(leaflet)
library(spData)
library(dplyr)

# Define UI ----
ui <- fluidPage(
  titlePanel("Gobierno Digital"),
  sidebarLayout(
    sidebarPanel(
      img(src = "/mibus.png", height = 140, width = 200),
      
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
      img(src = "/panamaCentro.png", height = 500, width = 900),
      fluidRow(
        column(2, "Hola"),
        column(4, 'Hey')
        ),
      strong("Desarrollado por el grupo Gobierno Digital conformado por: Prof: Juan Saldaña, Prof: Víctor López, Valerie Tuñón, Anel Atencio, Fernando Cutire")
    )
  )
)


# Define lógica del servidor ----
server <- function(input, output) {

}

# Corre la aplicación ----
shinyApp(ui = ui, server = server)

