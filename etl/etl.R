etl <- function(input) {
  output <- list()
  for (score in names(input)) {
    output[tolower(input[[score]])] <- as.numeric(score)
  }
  output[order(names(output))]
}
