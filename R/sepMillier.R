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
  return(paste0(format(x, format = "f", digits = NULL, big.mark = " ", scientific=FALSE, trim=TRUE), "~"))
}
