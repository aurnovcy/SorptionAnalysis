#' Plots a Temkin Isotherm using results from a static adsorption experiment
#'
#' @param Ce A numeric vector consisting of equilibrium concentration values
#' @param Qe A numeric vector consisting of quantities adsorbed at equilibrium
#' @return The plot of ln(Ce) against Qe with the LSRL displayed
#' @examples
#' temkinplot(c(1,2,3,4), c(1,2,3,4))

temkinplot <- function(Ce, Qe)
{
  x <- log(Ce)
  y <- Qe
  plot(x, y, main = "Temkin Isotherm", xlab = "ln(Ce)", ylab = "Qe", type = "p", col = "black", pch = 15)
  fit <- lm(y ~ x)
  abline(fit, col="black")
}
