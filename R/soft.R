# a test function for project

#' soft threshold function
#'
#' @param a A scalar to be thresholded
#' @param lambda  Non-negative parameter
#'
#' @return Returns S(a, lambda)
#' @export
#'
#' @examples
#' soft(3,2)
#' soft(1,2)
soft <- function(a, lambda){
  sign(a) * max(abs(a) - lambda, 0)
}
