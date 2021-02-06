library(readr)
library(dplyr)

### All the precomputed P-values for gene expression difference between tumor
### and normal samples for all human tumor suppressor genes in pan-cancer

raw <- read_tsv("https://bioinfo.uth.edu/TSGene/sig_exp.txt")

sig_exp <- raw

save(sig_exp, file = "data/sig_exp.rda")
write_tsv(sig_exp, file = "data-raw/sig_exp.tsv")
