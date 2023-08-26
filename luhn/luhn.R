# Determine whether the number is valid.
is_valid <- function(input) {
  cleaned <- gsub("\\s", "", input)
  if (grepl("[^0-9]", cleaned) || (nchar(cleaned) == 1)) return(FALSE)
  nums <- strsplit(cleaned, "") |>
    unlist() |> as.integer() |> rev()
  total <- sapply(1:length(nums), function(ind) {
    value <- nums[[ind]]
    ifelse(ind %% 2 == 0,
           ifelse(value > 4, 2 * value - 9, 2 * value),
           value)
  }) |> sum()
  total %% 10 == 0
}
