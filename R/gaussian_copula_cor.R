#To get pointwise correlation from Gaussian latent model
# We construct a sample correlation matrix using latentcor func
#' Pointwise Correlation from Gaussian latent model
#'
#' @param n A positive integer indicating the sample size. The default value is 100.
#' @param ntime A positive integer indicating the number of time points. The default value is 50.
#' @return pointwise correlation matrix
#' @export
#'
#' @examples
#' gaussian_copula_cor(n = 100, ntime = 20)
#' gaussian_copula_cor(n = 20, ntime = 2)

gaussian_copula_cor = function(n = 100, ntime = 50){
  T_types = rep("con", ntime)
  sim_data = gen_data(n, types = T_types)$X
  cor_pointwise = latentcor(X = sim_data)$Rpointwise #return this pointwise correlation matrix
}
