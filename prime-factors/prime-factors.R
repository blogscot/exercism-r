prime_factors <- function(number) {
  factor <- 2
  prime_factors = c()
  while (number != 1) {
    while (number %% factor == 0) {
      prime_factors <- append(prime_factors, factor)
      number <- number / factor
    }
    factor <- factor + 1
  }
  prime_factors
}
