#' Create numeric summary
#'
#' Computes mean, min, max, standard deviation, and median for a numeric vector.
#'
#' @param x A numeric vector.
#' @return An object of class 'numSummary' containing summary statistics.
#' @examples
#' my_numbers <- c(1, 5, 3, 9, 2)
#' summary_obj <- numSummary(my_numbers)
#' summary_obj
numSummary <- function(x) {
  if(!is.numeric(x)) stop("Input must be numeric")
  structure(
    list(
      mean = mean(x),
      min = min(x),
      max = max(x),
      sd = sd(x),
      median = median(x)
    ),
    class = "numSummary"
  )
}

#' Print method for numSummary objects
#'
#' @param obj A numSummary object
print.numSummary <- function(obj) {
  cat("Summary of numeric input:\n")
  cat("Mean: ", obj$mean, "\n")
  cat("Min: ", obj$min, "\n")
  cat("Max: ", obj$max, "\n")
  cat("Standard Deviation: ", obj$sd, "\n")
  cat("Median: ", obj$median, "\n")
}
