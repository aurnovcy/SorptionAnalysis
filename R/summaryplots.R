#' Plots the three different Isotherm models using results from a static
#' adsorption experiment
#'
#' @param Ce A numeric vector consisting of equilibrium concentration values
#' @param Qe A numeric vector consisting of quantities adsorbed at equilibrium
#' @return The plots of Langmuir, Freundlich, and Temkin Isotherms
#' @examples
#' summaryplots(c(1,2,3,4), c(1,2,3,4))

summaryplots <- function(Ce, Qe)
{
  langmuirplot(Ce, Qe)
  freundlichplot(Ce, Qe)
  temkinplot(Ce, Qe)
}
