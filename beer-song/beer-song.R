lyrics <- \(first, last) paste(verse(first:last), collapse = "\n")

verse <- Vectorize(function(number) {
  parts <- switch(
    paste(number),
    '0' = c("No more bottles", "Go to the store and buy some more, ", "99"),
    '1' = c("1 bottle", "Take it down and pass it around, ", "no more"),
    c(paste(number, "bottles"), "Take one down and pass it around, ", number - 1)
  )
  bottles <- ifelse(number == 2, " bottle", " bottles")
  paste0(
    parts[1], " of beer on the wall, ",  tolower(parts[1]), " of beer.\n",
    parts[2], parts[3], bottles, " of beer on the wall.\n"
  )
})
