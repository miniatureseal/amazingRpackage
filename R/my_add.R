#' Function which adds two numbers x and y
#'
#' @param x First number which will be added
#' @param y Optional: Second number which will be added
#' default value is 10
#'
#' @return string which states who is amazing
#' @export
#'
#' @examples
#'my_add(1, 2)       # output: 3
#'my_add(1)          # output: 11
#'my_add(NA)         # output: NA
#'my_add(10, NA)     # output: NA
#'try(my_add("10", "20")) # output: error message saying "One of your inputs contains a string value"
my_add <- function(x, y=10) {
  if (assertthat::is.string(x) | assertthat::is.string(y)) {
    stop("One of your inputs contains a string value")
  }

  if (is.na(x) | is.na(y)) {
    return(NA)
  }

  return(x + y)
}
