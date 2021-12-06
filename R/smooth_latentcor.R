#Now we need to use fpca.sc function to smooth Khat to get Ktilde
#We will get some parts of fpca.sc to get our smoothed correlation matrix
#First we create our function

smooth_latentcor = function(Y = NULL, argvals = NULL, Khat = NULL, cov.est.method = 2, useSymm = TRUE){
  #Check Y is not null
  if(is.null(Y)){
    stop("Y must be provided by users.")
  }
  # Y is our generated data coming from Gaussian latent model
  if(is.null(Khat)){
    stop("Y must be provided by users.")
  }
  D = ncol(Y)
  I = nrow(Y)
  #Check argvals is null or not
  if (is.null(argvals)){
    argvals = seq(0, 1, length = D)
  }
  # if (cov.est.method == 2) {
  #   # smooth raw covariance estimate
  #   cov.sum = cov.count = cov.mean = matrix(0, D, D)
  #   Ytilde = Y
  #   for (i in 1:I) {
  #     obs.points = which(!is.na(Y[i, ]))
  #     cov.count[obs.points, obs.points] = cov.count[obs.points, obs.points] + 1
  #     cov.sum[obs.points, obs.points] = cov.sum[obs.points, obs.points] +
  #       tcrossprod(Y.tilde[i, obs.points])  # in my case Ytilde = Y and we do not care about mu
  #   }
  #   ##This is our Khat now and we want to smooth Khat to get Ktilde
  #    ## You need to call another function here: gaussian_copula_cor
  #   #G.0 = ifelse(cov.count == 0, NA, cov.sum/cov.count)
  #   #We do not need to use G.0 here because we have Khat
  #   G.0 = Khat
  #   diag.G0 = diag(G.0)
  #   diag(G.0) = NA
  #   if (!useSymm) {
  #     row.vec = rep(argvals, each = D)
  #     col.vec = rep(argvals, D)
  #     npc.0 = matrix(predict(gam(as.vector(G.0) ~ te(row.vec, col.vec, k = nbasis),
  #                                weights = as.vector(cov.count)), newdata = data.frame(row.vec = row.vec,
  #                                                                                      col.vec = col.vec)), D, D)
  #     npc.0 = (npc.0 + t(npc.0))/2
  #   } else {
  #     use <- upper.tri(G.0, diag = TRUE)
  #     use[2, 1] <- use[ncol(G.0), ncol(G.0) - 1] <- TRUE
  #     usecov.count <- cov.count
  #     usecov.count[2, 1] <- usecov.count[ncol(G.0), ncol(G.0) - 1] <- 0
  #     usecov.count <- as.vector(usecov.count)[use]
  #     use <- as.vector(use)
  #     vG.0 <- as.vector(G.0)[use]
  #     row.vec <- rep(argvals, each = D)[use]
  #     col.vec <- rep(argvals, times = D)[use]
  #     mCov <- gam(vG.0 ~ te(row.vec, col.vec, k = nbasis), weights = usecov.count)
  #     npc.0 <- matrix(NA, D, D)
  #     spred <- rep(argvals, each = D)[upper.tri(npc.0, diag = TRUE)]
  #     tpred <- rep(argvals, times = D)[upper.tri(npc.0, diag = TRUE)]
  #     smVCov <- predict(mCov, newdata = data.frame(row.vec = spred, col.vec = tpred))
  #     npc.0[upper.tri(npc.0, diag = TRUE)] <- smVCov
  #     npc.0[lower.tri(npc.0)] <- t(npc.0)[lower.tri(npc.0)]
  #   }
  # } else if (cov.est.method == 1) {
  #   # smooth y(s1)y(s2) values to obtain covariance estimate
  #   row.vec = col.vec = G.0.vec = c()
  #   cov.sum = cov.count = cov.mean = matrix(0, D, D)
  #   for (i in 1:I) {
  #     obs.points = which(!is.na(Y[i, ]))
  #     temp = tcrossprod(Y.tilde[i, obs.points])
  #     diag(temp) = NA
  #     row.vec = c(row.vec, rep(argvals[obs.points], each = length(obs.points)))
  #     col.vec = c(col.vec, rep(argvals[obs.points], length(obs.points)))
  #     G.0.vec = c(G.0.vec, as.vector(temp))
  #     # still need G.O raw to calculate to get the raw to get the diagonal
  #     cov.count[obs.points, obs.points] = cov.count[obs.points, obs.points] +
  #       1
  #     cov.sum[obs.points, obs.points] = cov.sum[obs.points, obs.points] + tcrossprod(Y.tilde[i,
  #                                                                                            obs.points])
  #   }
  #   row.vec.pred = rep(argvals, each = D)
  #   col.vec.pred = rep(argvals, D)
  #   npc.0 = matrix(predict(gam(G.0.vec ~ te(row.vec, col.vec, k = nbasis)), newdata = data.frame(row.vec = row.vec.pred,
  #                                                                                                col.vec = col.vec.pred)), D, D)
  #   npc.0 = (npc.0 + t(npc.0))/2
  #   G.0 = ifelse(cov.count == 0, NA, cov.sum/cov.count)
  #   diag.G0 = diag(G.0)
  # }
  #
  # if (makePD) {
  #   npc.0 <- {
  #     tmp <- Matrix::nearPD(npc.0, corr = FALSE, keepDiag = FALSE, do2eigen = TRUE,
  #                           trace = TRUE)
  #     as.matrix(tmp$mat)
  #   }
  # }
}
