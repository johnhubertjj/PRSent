#' Main_module UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_Main_module_ui <- function(id){
  ns <- NS(id)
  tagList(
    # Initiate a navbarpage
    navbarPage(
      # Have the title be an image
      id = ns("PRSent_nav"),
      title = div(img(src = 'www/PRSent_logo.png', style = "margin-top: -10px; padding-bottom:10px")),
      # Create a home page
      tabPanel("Home",
               icon = icon("home"),
               mod_Home_ui(ns("Home_ui_1"))
               ),
      # Create the first analysis bar
      navbarMenu("Analyse PRS",
                 icon = icon('dna'),
                 tabPanel(
                   value = ns("run_regression"),
                   title = "Run regression",
                   mod_regression_ui("regression_ui_1")
                 ))
    )
  )
}
    
#' Main_module Server Functions
#'
#' @noRd 
mod_Main_module_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    mod_Home_server(id = "Home_ui_1")
    mod_regression_server(id = "regression_ui_1")
  })
}
    
## To be copied in the UI
# mod_Main_module_ui("Main_module_ui_1")
    
## To be copied in the server
# mod_Main_module_server("Main_module_ui_1")
