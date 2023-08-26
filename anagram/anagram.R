hash <- Vectorize(function(word) {
  word |>
    tolower() |>
    strsplit("") |>
    unlist() |>
    sort() |>
    paste(collapse = "")
})

anagram <- function(subject, candidates) {
  anagrams <- candidates[hash(subject) == hash(candidates) &
    tolower(subject) != tolower(candidates)]
  ifelse(length(anagrams), return(anagrams), return(NULL))
}
