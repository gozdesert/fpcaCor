
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fpcaCor

We want to focus on FPC analysis from a different angle. Now we consider
given *X*<sub>*i*</sub>(*t*), *t* = 1, …, *T*, *i* = 1, …, *n*. For
simplicity, we will assume that the data start with the same time points
*t* across subjects and equi-distant time points. Instead of covariance
matrix, we want to work on sample correlation matrix
*K̂* ∈ ℝ<sup>*T* × *T*</sup> based on latent Gaussian copulas. Then by
finding appropriate method to smooth *K̃*, we will obtain the
eigenvalues. This is the main goal of the project.

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
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
