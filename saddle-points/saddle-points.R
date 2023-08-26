saddle_point <- function(input) {
  dimension <- dim(input)
  nrows <-  dimension[1]
  ncols <- dimension[2]
  output <- data.frame(row = numeric(), col = numeric())
  for (row in seq_len(nrows)) {
    row_max = max(input[row,])
    for (col in seq_len(ncols)) {
      value <- input[row, col]
      col_min <- min(input[, col])
      if (value == row_max && value == col_min) {
        output <- rbind(output, data.frame(row = row, col = col))
      }
    }
  }
  output
}
