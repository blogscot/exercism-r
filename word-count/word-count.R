word_count <- function(input) {
  words <- strsplit(tolower(input), "\\W+") |> unlist()
  as.list(table(words[words != ""]))
}
