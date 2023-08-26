scrabble_scores <-
  list(
    groups = c("AEIOULNRST", "DG", "BCMP", "FHVWY", "K", "JX", "QZ"),
    scores = c(1, 2, 3, 4, 5, 8, 10)
  )

get_letter_score <- Vectorize(function(letter) {
  with(scrabble_scores,
       scores[sapply(groups, \(group) grepl(letter, group))])
})

scrabble_score <- function(input){
  if (input == "") return(0)
  input |>
    toupper() |>
    strsplit("") |>
    sapply(get_letter_score) |>
    sum()
}
