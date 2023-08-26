sounds <- c("Pling" = 3, "Plang" = 5, "Plong" = 7)

raindrops <- function(number) {
  drops <- sounds[number %% sounds == 0] |>
    names() |>
    paste(collapse = "")
  ifelse(drops != "", drops, toString(number))
}
