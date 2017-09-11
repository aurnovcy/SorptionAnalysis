#' Describes the conformity of the results from a static adsorption experiment
#' to the Temkin Isotherm model
#'
#' @param Ce A numeric vector consisting of equilibrium concentration values
#' @param Qe A numeric vector consisting of quantities adsorbed at equilibrium
#' @return The residuals, y - intercept, coefficient, and correlation factor of
#' the LSRL based on the Temkin isotherm model
#' @examples
#' temkinanalysis(c(1,2,3,4), c(1,2,3,4))

temkinanalysis <- function(Ce, Qe)
{
  x3 <- log(Ce)
  y3 <- Qe
  fit3 <- lm(y3 ~ x3)
  print("Temkin Isotherm Analysis")
  print(summary(fit3))
}
