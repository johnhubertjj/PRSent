#' app_server 
#'
#' @description A fct function
#'
#' @return The return value, if any, from executing the function.
#'
#' @noRd
read.in.dataset <- function( dataset_path, method = c("data.table", "RData", "feather", "rds", "Prsice")){
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
  } else if( method == "Prsice"){
    NULL
  }
}
  