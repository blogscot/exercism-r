is_pangram <- function(input) {
  input |>
    tolower() |>
    (\(.) gsub("[^a-z]", "", .))() |>
    strsplit("") |>
    unlist() |>
    unique() |>
    length() == 26
}
