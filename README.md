
<!-- README.md is generated from README.Rmd. Please edit that file -->

# generations

The goal of generations is to allow users to calculate the number of
“generations” since the first value in a variable. It is imagined for
use with years, but can be used with any dbl variable. As we study
generational effects in sociology, genetics and genomics, and more, a
quick method of calculating generations like this is necessary.

## Installation

Since this package is not yet published on CRAN, use `devtools::` to
load it.

``` r
#devtools::install_github("ewincm15/generations")
```

## Example

This is a basic example which shows you how to solve a common problem,
using the default `generationtime` of 25 years (so called because of
human generation times):

``` r
library(generations)
gen(c(1559, 1996, 1448, 1668, 1773))
#> Calculating number of generations
#> [1]  0  5  9 13 22
```

Here is an example of changing the default generation time to 3 years,
to calculate the generations for meerkats, for example:

``` r
gen(c(2005, 1778, 2012, 1987, 1654, 1328), generationtime = 3)
#> Calculating number of generations
#> [1]   0 109 150 220 226 228
```

## Building `generations`

Here are the packages and functions I used to prepare the package:

``` r
#library(devtools)
#create_package()
#use_git()
#use_r("generations")
#library(testthat)
```

Here is the function contained in the package:

``` r
#gen <- function(data, na.rm = TRUE, verbose = TRUE, generationtime = 25){
  #if(verbose) message("Calculating number of generations")
  #data = sort(data)
  #test = (data - data[1])/generationtime
  #return (ceiling(test)  )
#}
```

I did not do any manual work with my files.

## ‘generations’ in Context

`generations` currently only contains the function `gen`, which
calculates generations. Any other imagining of how to calculate
generations or how to display them is forthcoming.

`generations` currently only takes numeric vectors. Accordingly, if data
is in date formats, transforming it into dbl using the `lubridate::`
package is recommended.

All objects (namely, `gen`) are exported and can be accessed via
`generation::`.
