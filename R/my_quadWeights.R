#' Quadrature weights
#'
#' Necessary function for numerical integration.
#' @param argvals function arguments
#' @param method quadrature method. Can be either trapedoidal or midpoint.
#'
#' @return a vector of quadrature weights for the points supplied in argvals.
#'
#'
#'
my_quadWeights<- function(argvals, method = "trapezoidal")
{
  ret <- switch(method,
                trapezoidal = {D <- length(argvals)
                1/2*c(argvals[2] - argvals[1], argvals[3:D] -argvals[1:(D-2)], argvals[D] - argvals[D-1])},
                midpoint = c(0,diff(argvals)),  # why is this called 'midpoint'???
                stop("function quadWeights: choose either trapezoidal or midpoint quadrature rule"))

  return(ret)
}
