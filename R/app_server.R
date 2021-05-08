#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # Initiate reactive values
  r <- reactiveValues()
  
  environment <- production.or.development.environment()
  
  # Import values from the configuration file
  if(environment == 'dev'){
    config <- config::get(config = "default", file = app_sys('golem-config.yml'))
  }
  
  # Connect to the PRS server
  mod_Main_module_server("Main_module_ui_1")
  
  # Your application server logic 
  waiter::waiter_hide()
}
