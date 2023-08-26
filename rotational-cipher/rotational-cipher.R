rotate <- function(text, key) {
  chars <- unlist(strsplit(text, ""))
  rotation_indices <- (match(tolower(chars), letters) + key - 1) %% 26 + 1
  rotated_letters <- letters[rotation_indices]
  uppers <- toupper(chars) == chars
  rotated_letters[uppers] <- toupper(rotated_letters[uppers])
  rotated_letters[is.na(rotated_letters)] <- chars[is.na(rotated_letters)]
  paste(rotated_letters, collapse = "")
}
