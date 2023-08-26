acronym <- function(input) {
  strsplit(input, "[^a-zA-Z']") |>
    sapply(function(word) substr(word, 1, 1)) |>
    sapply(toupper) |>
    paste(collapse = "")
}
