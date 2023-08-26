to_rna <- function(dna) {
  chars <- strsplit(dna, "") |> unlist()
  stopifnot(all(chars %in% c("C", "G", "T", "A")))
  chartr("CGTA", "GCAU", dna)
}
