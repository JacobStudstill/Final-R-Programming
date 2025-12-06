#' Print method for numSummary objects
#' @param obj A numSummary object
#' @export
print.numSummary <- function(obj) {
  cat("Summary of numeric input:\n")
  cat("Mean: ", obj$mean, "\n")
  cat("Min: ", obj$min, "\n")
  cat("Max: ", obj$max, "\n")
  cat("Standard Deviation: ", obj$sd, "\n")
  cat("Median: ", obj$median, "\n")
}
