# a test function for project

soft <- function(a, lambda){
  sign(a) * max(abs(a) - lambda, 0)
}
