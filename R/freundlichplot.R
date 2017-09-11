#' Plots a Freundlich Isotherm using results from a static adsorption experiment
#'
#' @param Ce A numeric vector consisting of equilibrium concentration values
#' @param Qe A numeric vector consisting of quantities adsorbed at equilibrium
#' @return The plot of log(Ce) against log(Qe) with the LSRL displayed
#' @examples
#' freundlichplot(c(1,2,3,4), c(1,2,3,4))

freundlichplot <- function(Ce, Qe)
{
  x <- log10(Ce)
  y <- log10(Ce)
  plot(x, y, main = "Feundlich Isotherm", xlab = "log(Ce)", ylab = "log(Qe)", type = "p", col = "black", pch = 15)
  fit <- lm(y ~ x)
  abline(fit, col="black")
}

