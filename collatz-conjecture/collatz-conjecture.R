collatz_step_counter <- Vectorize(function(num) {
  stopifnot(num > 0)
  count <- 0
  while (num != 1) {
    num <- ifelse(num %% 2, num * 3 + 1, num / 2)
    count <- count + 1
  }
  count
})
