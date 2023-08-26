win  <- \(name) data.frame(Team = name, MP = 1, W = 1, D = 0, L = 0, P = 3)
lose <- \(name) data.frame(Team = name, MP = 1, W = 0, D = 0, L = 1, P = 0)
draw <- \(name) data.frame(Team = name, MP = 1, W = 0, D = 1, L = 0, P = 1)

clean_data <- function(input) {
  results <- strsplit(input, ";")
  results <- results[sapply(results, length) == 3]
  df <- do.call(rbind, results) |> as.data.frame()
  colnames(df) <- c("home", "away", "results")
  df
}

get_match_stats <- function(match) {
  switch(match$result,
    "win"  = rbind(win(match$home), lose(match$away)),
    "loss" = rbind(lose(match$home), win(match$away)),
    "draw" = rbind(draw(match$home), draw(match$away)))
}

calculate_scores <- function(input) {
  cleaned_data <- clean_data(input)
  match_results <- data.frame()
  for (i in seq_len(nrow(cleaned_data))) {
    row <- cleaned_data[i,]
    match_results <- rbind(match_results, get_match_stats(row))
  }
  aggregate(match_results[-1], match_results[1], sum)
}

tournament <- function(input) {
  scores <-  calculate_scores(input)
  ordered <- scores[order(-scores$P, scores$Team), ]
  rownames(ordered) <- NULL
  ordered
}
