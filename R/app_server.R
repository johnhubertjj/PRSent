#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # Initiate reactive values
  r <- reactiveValues()
  
  # Your application server logic 
  waiter::waiter_hide()
}
