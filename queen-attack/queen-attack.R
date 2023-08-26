create <- function(row, col) {
  stopifnot(row >= 0 && row <= 7 && col >= 0 && col <= 7)
  setClass("queen", slots = list(row = "numeric", col = "numeric"))
  new("queen", row = row, col = col)
}

can_attack <- function(queen1, queen2) {
  stopifnot(isS4(queen1) && isS4(queen2))
  queen1@row == queen2@row || queen1@col == queen2@col ||
  abs(queen1@row - queen2@row) == abs(queen1@col - queen2@col)
}
