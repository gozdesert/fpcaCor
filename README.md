---
title: "fpcaCor package for Functional Data Analysis"
output: github_document
---


```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```


The aim of the package **fpcacor** is to find an appropriate method to smooth the correlation matrix $\tilde(K)$ based on latent Gaussian copulas. 

## installation of the current development version

You can install the development version of the package in R using:

```{r}
devtools::install_github("gozdesert/RPackageProject", build_vignettes = TRUE) 
``` 

## Examples

### The intended use of your package 
We want to focus on FPC analysis from a different angle. Now we consider given $X_i(t)$, $t=1, \dots, T$, $i = 1, \dots, n$. For simplicity, we will assume that the data start with the same time points $t$ across subjects and equi-distant time points. Instead of covariance matrix, we want to work on sample correlation matrix $\hat{K} \in \mathbb{R}^{T \times T}$ based on latent Gaussian copulas. Then by finding appropriate method to smooth $\tilde{K}$, we will obtain the eigenvalues. This is the main goal of the project.

### What is left for the project 
Main steps to finish the projects are: 

Step 1: Construct sample correlation matrix $\widehat K \in \mathbb{R}^{T \times T}$ based on latent Gaussian copulas (see R package **latentcor**)

Step 2: Smooth constructed correlation matrix to obtain smooth $\widetilde K$

Step 3: Extract eigen-functions from $\widetilde K$

Step 4 (*optional*): Get the scores on the latent level

Step 5 (*optional*): Use fitted $\widehat \mu(t) +\sum_{j=1}^r \xi_{ij}\phi_j(t)$ to get back to observed $X_i(t)$

