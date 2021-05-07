#' regression UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_regression_ui <- function(id){
  ns <- NS(id)
  tagList(
    sidebarLayout(
      sidebarPanel(
        h3("Gene-set regression Visualisation"),
        
        selectInput(ns("Choose_dataset"),
                    label = "Step one: Choose Dataset",
                    choices = list(`Demo` = "Demo",
                                   `Input file` = 'Input file'))
      ),
      mainPanel = mainPanel(
        plotOutput(ns("regression_plot"))
      )
    )
  )
}
    
#' regression Server Functions
#'
#' @noRd 
mod_regression_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    browser()
    output$regression_plot <- renderPlot({
      shinipsum::random_ggplot()
    })
 
  })
}
    
## To be copied in the UI
# mod_regression_ui("regression_ui_1")
    
## To be copied in the server
# mod_regression_server("regression_ui_1")
