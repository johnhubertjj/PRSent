#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # Initiate reactive values
  r <- reactiveValues()
  
  # Connect to the PRS server
  mod_Main_module_server("Main_module_ui_1")
  
  # Your application server logic 
  waiter::waiter_hide()
}
