#' Create numeric summary
#'
#' Computes mean, min, max, standard deviation, and median for a numeric vector.
#' @param x A numeric vector
#' @param na.rm Logical, whether to remove NA values (default TRUE)
#' @return An object of class 'numSummary'
#' @examples
#' my_numbers <- c(1,5,3,NA,9,2)
#' summary_obj <- numSummary(my_numbers)
#' summary_obj
#' @export
numSummary <- function(x, na.rm = TRUE) {
  if(!is.numeric(x)) stop("Input must be numeric")

  # Remove NA if na.rm is TRUE
  if (na.rm) x <- x[!is.na(x)]

  # Check that x is not empty after removing NA
  if(length(x) == 0) stop("No numeric values to summarize")

  structure(
    list(
      mean = mean(x),
      min = min(x),
      max = max(x),
      sd = sd(x),
      median = median(x),
      length = length(x)
    ),
    class = "numSummary"
  )
}
