#' Describes the conformity of the results from a static adsorption experiment
#' to the Langmuir, Freundlich, and Temkin Isotherm model
#'
#' @param Ce A numeric vector consisting of equilibrium concentration values
#' @param Qe A numeric vector consisting of quantities adsorbed at equilibrium
#'
#' @return The residuals, y - intercept, coefficient, and correlation factor of
#' the LSRL based on the Langmuir, Freundlich, and Temkin isotherm model
#' @examples
#' summaryanalysis(c(1,2,3,4), c(1,2,3,4))

summaryanalysis <- function(Ce, Qe)
{
  langmuiranalysis(Ce, Qe)
  freundlichanalysis(Ce, Qe)
  temkinanalysis(Ce, Qe)
}
