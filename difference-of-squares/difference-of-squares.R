difference_of_squares <- function(number) {
  sum(1:number)^2 - (1:number)^2 |> sum()
}
