
<!-- README.md is generated from README.Rmd. Please edit that file -->

# casemisc

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/casemisc)](https://CRAN.R-project.org/package=casemisc)
<!-- badges: end -->

El objetivo de `{casemisc}` es poder reutilizar funciones recurrentes en
diversos proyectos personales.

## Installation

Puedes instalar la versión de desarrollo de `{casemisc}` con el
siguiente código:

``` r
remotes::install_github("calderonsamuel/casemisc")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(casemisc)

str_limpiar("universidad\tde\thuánuco")
#> [1] "UNIVERSIDAD DE HUANUCO"
```
