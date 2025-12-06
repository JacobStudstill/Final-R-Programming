#' Plot numeric summary with ggplot2
#'
#' Creates a ggplot2 bar chart of mean, min, max, and median
#' from a numSummary object.
#'
#' @param obj A numSummary object.
#' @return A ggplot2 bar chart of summary statistics.
#' @examples
#' x <- c(1, 5, 3, NA, 9, 2)
#' s <- numSummary(x)
#' plot(s)
#' @export
plot.numSummary <- function(obj) {

  library(ggplot2)

  df <- data.frame(
    Statistic = c("Mean", "Min", "Max", "Median"),
    Value = c(obj$mean, obj$min, obj$max, obj$median)
  )

  ggplot(df, aes(x = Statistic, y = Value, fill = Statistic)) +
    geom_col(show.legend = FALSE) +
    labs(title = "Summary Statistics with ggplot") +
    theme_minimal()
}
