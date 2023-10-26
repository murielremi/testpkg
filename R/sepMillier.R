# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' Sep Millier
#'
#' @param x numeric value
#'
#' @return string value of the input with space thousand separator
#' @export
#'
#' @examples
#' sepMillier(28000)
#' # output: 28 000
sepMillier<-function(x){
  return(paste0(format(x, format = "f", digits = NULL, big.mark = " ", scientific=FALSE, trim=TRUE), ".."))
}

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
