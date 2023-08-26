fizz_buzz <- function(n) {
  nums = 1:n
  nums[which(1:n %% 3 == 0)] = "Fizz"
  nums[which(1:n %% 5 == 0)] = "Buzz"
  nums[which(1:n %% 15 == 0)] = "Fizz Buzz"
  nums
}
