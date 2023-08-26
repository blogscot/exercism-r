build_line <- Vectorize(function(width, letter) {
  if (width == 1) return(letter)
  start <- LETTERS[1:width]
  line <- c(rev(start)[1:(width - 1)], start)
  line[line != letter] <- " "
  paste(line, collapse = "")
})

diamond <- function(letter) {
  pos <- match(letter, LETTERS)
  top <- build_line(pos, LETTERS[1:pos])
  full <- c(top, rev(top)[-1])
  paste(full, collapse = "\n")
}
