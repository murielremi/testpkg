#' Value Unite
#'
#' @param val numeric value
#'
#' @return string value of the input with ISU abbreviation
#' @export
#'
#' @examples
#' valueUnite(2800)
#' # output: 2.8 K
#' valueUnite(2800000)
#' # output: 2.8 M
#' valueUnite(2800000000)
#' # output: 2.8 MDS
valueUnite <- function(val){
  if(!length(val)){
    return(0)
  }
  if(is.na(val)){
    return("")
  }
  if(is.nan(val)){
    return("")
  }
  if(val<= 1000){
    return(paste0(val))
  }
  else if(val<= 1000000){
    return(paste0(round(val/1000,2)," K"))
  }
  else if(val<= 1000000000){
    return(paste0(round(val/1000000,2)," M"))
  }
  else{
    return(paste0(round(val/1000000000,2)," MDS"))
  }
}
