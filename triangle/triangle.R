triangle <- function(x, y, z) {
  sides <- sort.int(c(x, y, z))
  stopifnot(sum(sides[1:2]) > sides[3] && sides[3] > 0)
  switch(length(unique(sides)),
         structure(sides, class = c("equilateral", "isosceles")),
         structure(sides, class = "isosceles"),
         structure(sides, class = "scalene"))
}
