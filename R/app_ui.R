#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  
  loading_screen <- tagList(
    waiter::spin_3circles(),
    h3("PRSenting your data, in a shiny-ier way", style = "color:black")
  )
  
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    
    # Initiate shinyjs
    shinyjs::useShinyjs(),
    
    waiter::use_waiter(),
    waiter::use_steward(),
    waiter::waiter_show_on_load(html = loading_screen),
    
    mod_Main_module_ui("Main_module_ui_1")
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'PRSent'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

