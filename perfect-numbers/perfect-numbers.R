aliquot_sum <- function(num) {
  range <- 1:(num / 2)
  sum(range[num %% range == 0])
}

number_type <- function(num) {
  stopifnot(num > 0)
  if (num == 1) {
    return("deficient")
  }
  delta <- aliquot_sum(num) - num
  ifelse(delta > 0, "abundant", ifelse(delta, "deficient", "perfect"))
}
