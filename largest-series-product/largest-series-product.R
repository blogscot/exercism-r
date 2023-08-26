largest_series_product <- function(digits, span) {
  stopifnot(!grepl("[^0-9]", digits) & span <= nchar(digits))
  vec <- digits |>
    strsplit("") |>
    unlist() |>
    as.integer()

  offset <- span - 1
  largest <- 0
  for (i in 1:(length(vec) - offset)) {
    largest <- max(largest, prod(vec[i:(i + offset)]))
  }
  largest
}
