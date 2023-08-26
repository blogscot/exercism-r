normalized_plaintext <- function(input) {
  gsub("[^a-z0-9]", "", tolower(input))
}

create_matrix <- function(input) {
  if (input == "") return(matrix("", 1))
  text <- normalized_plaintext(input) |> strsplit("") |> unlist()
  len <- length(text)
  width <- ceiling(sqrt(len))
  padding = (width^2 - len) %% width
  text <- c(text, rep(" ", times = padding))
  matrix(text, nrow = width)
}

plaintext_segments <- function(input) {
  create_matrix(input) |>
    apply(2, paste, collapse = "") |>
    trimws()
}

encoded <- function(input) {
  gsub(" ", "", ciphertext(input))
}

ciphertext <- function(input) {
  create_matrix(input) |>
    apply(1, paste, collapse = "") |>
    paste(collapse = " ")
}
