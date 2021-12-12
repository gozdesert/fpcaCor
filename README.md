
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fpcaCor

We consider given *X*<sub>*i*</sub>(*t*), *t* = 1, …, *T*,
*i* = 1, …, *n*. For simplicity, we will assume that the data start with
the same time points *t* across subjects and equi-distant time points.
Instead of covariance matrix, we want to work on sample correlation
matrix *K̂* ∈ ℝ<sup>*T* × *T*</sup> based on latent Gaussian copulas.
Then by finding appropriate method to smooth *K̃*, we will obtain the
eigen-functions. This is the main goal of the project.

## Installation

You can install the development version of fpcaCor from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("gozdesert/fpcaCor")
```

## Example

``` r
library(fpcaCor)
## basic example code
set.seed(46933)
### Generate data using the function "gaussian_copula_cor" :
n = 33  # number of samples
ntime = 20  # number of time points
Mydata.X = gaussian_copula_cor(n = 33, ntime = 20)$Y   #A n x ntime matrix for the Gaussian latent model
fpcaCor(X = Mydata.X, pve = 0.999999)  #Default value for pve = 0.99
#> $eigenfuncs
#>             [,1]       [,2]         [,3]         [,4]
#>  [1,] -1.0477763 -1.4513370  0.107153404 -0.051777626
#>  [2,] -1.0295428 -0.9919182  0.009376384 -0.002470227
#>  [3,] -1.0172161 -0.7764814  0.004028465 -0.001662834
#>  [4,] -1.0100675 -0.7244975  0.003186542 -0.001322347
#>  [5,] -1.0077900 -0.8170326  0.005817402 -0.001759918
#>  [6,] -1.0099863 -1.0631142  0.039109869 -0.013678662
#>  [7,] -1.0105420 -1.2748737  0.187441907 -0.075725924
#>  [8,] -0.9988107 -1.0324802  0.535040315 -0.316275817
#>  [9,] -0.9737953 -0.2418814  0.394962459 -0.382166070
#> [10,] -0.9442450  0.7425860 -0.592055648  0.508330222
#> [11,] -0.9218781  1.4730961 -0.751685383  0.460188739
#> [12,] -0.9203627  1.5968840 -0.306719117  0.120720949
#> [13,] -0.9457937  1.1406101 -0.035313072 -0.006607543
#> [14,] -0.9938799  0.3894209  0.025951005 -0.021474686
#> [15,] -1.0482809 -0.3112986 -0.043367400  0.020194532
#> [16,] -1.0725468 -0.4204079 -0.375686366  0.182256258
#> [17,] -1.0497415  0.2963681 -1.219571174  0.662495773
#> [18,] -1.0145073  1.1260397 -1.661956425  0.684451620
#> [19,] -0.9964217  1.4286691  1.398659848 -3.436056146
#> [20,] -0.9891557  1.3362938  4.723325556  3.320816067
#> 
#> $npc
#> [1] 4
```
