sieve <- function(num) {
  if (num == 1) {
    return(c())
  }
  candidates <- 1:num
  candidates[1] <- 0
  next_prime <- 2
  limit <- next_prime * next_prime

  while (limit < num) {
    range <- seq(limit, num, next_prime)
    candidates[range] <- 0
    next_prime <- candidates[candidates > next_prime][1]
    limit <- next_prime * next_prime
  }
  candidates[candidates]
}
