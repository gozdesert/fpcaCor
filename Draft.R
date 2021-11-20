#some checks and tests will be done here!
smooth_spline_mean = function(Y = NULL, argvals = NULL,  ){
  stopifnot(!is.null(Y))
  stopifnot(is.matrix(Y))
  data_dim <- dim(Y)
  I <- data_dim[1]
  J <- data_dim[2]
  if (is.null(argvals))
    argvals <- (1:J)/J - 1/2/J
  meanX <- rep(0, J)
  if (center) {
    meanX <- colMeans(Y, na.rm = TRUE)
    meanX <- smooth.spline(argvals, meanX, all.knots = TRUE)$y
    # Y <- t(t(Y) - meanX)
  }
  return(meanX)
}
