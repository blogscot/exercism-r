library(microbenchmark)

sum_of_multiples <- function(factors, limit) {
  numbers <- c()
  for (num in factors) {
    if (num < limit) {
      numbers <- append(numbers, seq.int(num, limit - 1, num))
    }
  }
  numbers |> unique() |> sum()
}
