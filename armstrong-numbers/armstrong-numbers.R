is_armstrong_number <- function(n) {
  chrs <- as.character(n)
  digits <- strsplit(chrs, "")[[1]] |> as.numeric()
  n == sum(digits^nchar(chrs))
}
