secret <-
  list(
    actions = list("wink", "double blink", "close your eyes", "jump"),
    codes = c(1, 2, 4, 8)
  )

handshake <- function(n) {
  resp <-
    secret$actions[sapply(secret$codes,
                          \(code) bitwAnd(code, n) > 0)] |> unlist()
  ifelse(bitwAnd(16, n), return(rev(resp)), return(resp))
}
