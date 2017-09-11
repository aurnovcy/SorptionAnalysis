#' Describes the conformity of the results from a static adsorption experiment
#' to the Freundlich Isotherm model
#'
#' @param Ce A numeric vector consisting of equilibrium concentration values
#' @param Qe A numeric vector consisting of quantities adsorbed at equilibrium
#' @return The residuals, y - intercept, coefficient, and correlation factor of
#' the LSRL based on the Temkin isotherm model
#' @examples
#' freundlichanalysis(c(1,2,3,4), c(1,2,3,4))

freundlichanalysis <- function(Ce, Qe)
{
  x2 <- log10(Ce)
  y2 <- log10(Qe)
  fit2 <- lm(y2 ~ x2)
  print("Freundlich Isotherm Analysis")
  print(summary(fit2))
}
