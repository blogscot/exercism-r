parse_phone_number <- function(number_string) {
  digits <- gsub("\\D", "", number_string)
  digits <- unlist(strsplit(digits, ""))
  if (digits[1] == "1") {
    digits <- digits[2:length(digits)]
  }
  if (length(digits) == 10 && (digits[1] > "1") && (digits[4] > "1")) {
    paste(digits, collapse = "")
  } else {
    NULL
  }
}
