#' Calculate a generation
#'
#' @param data Numeric vector (if using dates, first transform to dbl using lubridate::), no defaults.
#' @param na.rm “a logical value indicating whether NA values should be stripped before computation proceeds” (mean() documentation - Becker et al. 1988). Default is TRUE.
#' @param verbose “a verbose connection provides much more information about the flow of information between the client and server” (verbose documentation). Default is TRUE.
#' @param generationtime generationtime is the denominator in the function and is imagined as representing the number of years in a generation. Accordingly, the default is 25 (as in 25 years, for a human generation), but can be changed to any value and used to calculate any dbl (not only years).
#'
#' @return
#' A vector containing the number of generations that have passed since the first year in the dataset. The ceiling() function rounds the output up to the nearest whole number.
#' @export
#'
#' @examples
#' gen(c(1559, 1996, 1448, 1668, 1773))
gen <- function(data, na.rm = TRUE, verbose = TRUE, generationtime = 25){
  if(verbose) message("Calculating number of generations")
  data = sort(data)
  test = (data - data[1])/generationtime
  return (ceiling(test)  )
}

