
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
      
      h2("Meta"),
      helpText("Mide el tráfico en la actual ciudad de Panamá"),
      
      sliderInput("year",
                  "Year",
                  min = 2021,
                  max = 2040,
                  step = 1,
                  sep = "",
                  value = 2022),
      selectInput("select", h3("Selecciona una carretera"), 
                  choices = list("Carretera Transístmica" = 1, "Vía Ricardo J. Alfaro" = 2,
                                 "Carretera Panamericana" = 3), selected = 1)
    
    ),
    mainPanel(
      h1("Tráfico actual "),
      img(src = "/panamaCentro.png", height = 500, width = 900),
      p("Gobierno Digital conformado por: Prof: Juan Saldaña, Prof: Víctor López, Valerie Tuñón, Anel Atencio, Fernando Cutire")
      
    )
  )
)


# Define lógica del servidor ----
server <- function(input, output) {

}

# Corre la aplicación ----
shinyApp(ui = ui, server = server)

