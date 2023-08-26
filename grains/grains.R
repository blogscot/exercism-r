square <- function(num) {
  if (num < 1 || num > 64) {
    stop("num must be in the range 1:64")
  }
  2^(num - 1)
}

total <- function() {
  sum(2^(1:63))
}
