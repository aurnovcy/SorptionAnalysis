#' Plots a Langmuir Isotherm using results from a static adsorption experiment
#'
#' @param Ce A numeric vector consisting of equilibrium concentration values
#' @param Qe A numeric vector consisting of quantities adsorbed at equilibrium
#' @return The plot of 1 over Ce against 1 over Qe with the LSRL displayed
#' @examples
#' langmuirplot(c(1,2,3,4), c(1,2,3,4))

langmuirplot <- function(Ce, Qe)
{
  x <- 1/Ce
  y <- 1/Qe
  plot(x, y, main= "Langmuir Isotherm", xlab = "1 / Ce", ylab= "1 / Qe", type="p", col="black", pch = 15)
  fit <- lm(y ~ x)
  abline(fit, col="black")
}
