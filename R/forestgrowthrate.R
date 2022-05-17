#'  Forest growth rate
#' @param time period of growth (years)
#' @param C size of the forest (kg C)
#' @param parms - as list with four values, r, g, K and threshold
#' @param parms$r - exponential forest growth rate
#' @param parms$g - linear forest growth rate (kg/year)
#' @parms parms$K - carrying capacity (kg C)
#' @parms parms$threshold - canopy closure threshold (kg C)
#' @return dC change in forest size with time
#'
dgrowthrate = function(time, C, parms) {
  # compute rate of forest growth when C < threshold
  if(C < parms$threshold) {
    dC = parms$r * C
  }
  # compute rate of forest growth when C > = threshold
  if(C >= parms$threshold) {
    dC = parms$g * (1 - C/parms$K)
  }
  # set rate of forest growth to 0 when C reaches carrying capacity K
  if (C > parms$K) {
    dC = 0
  }
    return(list(dC))
}