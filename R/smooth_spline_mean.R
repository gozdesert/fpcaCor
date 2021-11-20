#' Smooth spline mean
#'
#' @param Y  a numerical matrix which is given by users.
#' @param argvals a numerical vector which can be given by users.
#' @param center a logical argument, it is TRUE (default).
#'
#' @return smoothed mean of given matrix Y.
#' @export
#'
#' @examples
#' ### settings
#' n = 50  # number of subjects
#' p = 200  #number of time points
#' Y = matrix(rnorm(n*p), nrow = n, ncol = p)
#' t = (1:p)/p  # a regular grid on [0,1]
#' result = smooth_spline_mean(Y = Y, argvals = t)
smooth_spline_mean = function(Y = NULL, argvals = NULL, center = TRUE){
  stopifnot(!is.null(Y))  #if Y = NULL, stop the function and give an error message
  stopifnot(is.matrix(Y))  #if Y is not a matrix, stop the function and give an error message
  data_dim <- dim(Y)
  I <- data_dim[1]
  J <- data_dim[2]
  if (is.null(argvals))
    argvals <- (1:J)/J - 1/2/J #create a numerical vector
  meanX <- rep(0, J)   #create a vector of zeros
  if (center) {
    meanX <- colMeans(Y, na.rm = TRUE)
    meanX <- smooth.spline(argvals, meanX, all.knots = TRUE)$y  #call smooth.spline function from the package refund
  }
  return(meanX)  #return the mean vector after smoothing
}
