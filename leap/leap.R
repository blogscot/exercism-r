leap <- function(year) {
    ## Is year divisible by n
    div_by <- \(n) year %% n == 0
    div_by(4) && !div_by(100) || div_by(400)
}
