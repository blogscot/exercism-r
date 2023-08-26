is_isogram <- function(word) {
  chrs <-
    gsub("[ -]", "", word) |>
    tolower() |>
    strsplit("") |>
    unlist()
  identical(chrs, unique(chrs))
}
