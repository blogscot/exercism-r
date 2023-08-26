pascals_triangle <- function(n) {
  if (n == 0) return(list())
  if (n == 1) return(list(1))
  row <- c(1)
  triangle <- list(row)
  for (i in 2:n) {
    row <- c(0, row) + c(row, 0)
    triangle[[i]] <- row
  }
  triangle
}
