#' read.in.dataset 
#'
#' @description A function that reads in different types of R data
#'
#' @return The dataset that can be read by R
#'
#' @noRd
read.in.dataset <- function( dataset_path, method = c("data.table", "RData", "feather", "rds")){
  
  if (length(method) != 1){
    stop("Please only choose one method as an input to the function")
  } else{
    if( method == "data.table"){
      data.table::fread( dataset_path)
    } else if( method == "RData"){
      base::mget( load(dataset_path))
    } else if( method == "feather"){
      feather::read_feather(dataset_path)
    } else if( method == "rds"){
      base::readRDS( dataset_path)
    } else if( method == "https_RData"){
      base::mget( load( gzcon( url(dataset_path))))
    }
  }
}

#' production.or.development.environment
#' 
#' @description declare what enivironment PRSent is currently running in
#' 
#' @return the golem options when running PRSent::run_app(app_production = *THIS*)
#' @noRd
production.or.development.environment <- function(){
  in_production <- golem::get_golem_options("app_production")
  return(in_production)
}
  