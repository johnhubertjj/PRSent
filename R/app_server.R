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
  
  # Load in the PRSice example
  data_prsice_example <- read.in.dataset(config$PRSice_input_example, method = "data.table")
  
  # Assign to petit r
  r$data_prsice_example <- data_prsice_example
  
  # Connect to the PRS server
  mod_Main_module_server("Main_module_ui_1")
  
  # Your application server logic 
  waiter::waiter_hide()
}
