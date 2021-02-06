library(readr)
library(dplyr)

### All the 1217 human tumor suppressor genes with basic annotations

raw <- read_tsv("https://bioinfo.uth.edu/TSGene/Human_TSGs.txt")

HumanTSGs <- raw

save(HumanTSGs, file = "data/HumanTSGs.rda")
write_tsv(HumanTSGs, file = "data-raw/HumanTSGs.tsv")
