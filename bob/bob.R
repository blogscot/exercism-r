is_question <- \(text) endsWith(text, "?")
is_shouting <- \(text) toupper(text) == text && tolower(text) != text
is_silent   <- \(text) nchar(text) == 0

bob <- function(input) {
  input <- input |> trimws()
  if (is_shouting(input) && is_question(input)) {
    "Calm down, I know what I'm doing!"
  } else if (is_shouting(input)) {
    "Whoa, chill out!"
  } else if (is_question(input)) {
    "Sure."
  } else if (is_silent(input)) {
    "Fine. Be that way!"
  } else {
    "Whatever."
  }
}
