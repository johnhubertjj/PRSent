#' Access_GETandPOST_PGSCatalog 
#'
#' @description A fct function
#'
#' @return The return value, if any, from executing the function.
#'
#' @noRd

GET_PGSCatalog_POSTRequest_metadata <- function(Sample_number){
    req <- httr::GET(url = paste0("https://www.pgscatalog.org/rest/score/", Sample_number))
    req_parsed <- httr::content(req, type = "application/json")
    
    return(req_parsed)
}