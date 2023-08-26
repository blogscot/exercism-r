is_valid <- \(input) !grepl("[^ACGT]", input)

nucleotide_count <- function(input) {
  stopifnot(is_valid(input))
  strand <- input |> strsplit("") |> unlist()
  c("A", "C", "G", "T") |>
    sapply(\(nucleo) sum(nucleo == strand)) |>
    as.list()
}
