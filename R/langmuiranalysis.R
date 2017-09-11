#' Describes the conformity of the results from a static adsorption experiment
#' to the Langmuir Isotherm model
#'
#' @param Ce A numeric vector consisting of equilibrium concentration values
#' @param Qe A numeric vector consisting of quantities adsorbed at equilibrium
#' @return The residuals, y - intercept, coefficient, and correlation factor of
#' the LSRL based on the Temkin isotherm model
#' @examples
#' langmuiranalysis(c(1,2,3,4), c(1,2,3,4))

langmuiranalysis <- function(Ce, Qe)
{
  x1 <- 1/Ce
  y1 <- 1/Qe
  fit1 <- lm(y1 ~ x1)
  print("Langmuir Isotherm Analysis")
  print(summary(fit1))
}
