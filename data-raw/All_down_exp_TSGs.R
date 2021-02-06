library(readr)
library(dplyr)

# Down-regulated tumor suppressor genes in tumor samples versus normal tissue

raw <- read_tsv("https://bioinfo.uth.edu/TSGene/All_down_exp_TSGs_pan-cancer.txt")

all_pan_cancer <- raw

write_tsv(all_pan_cancer, file = "data-raw/all_pan_cancer.tsv")

# BLCA : 493 human TSGs that are down-regulated in bladder urothelial carcinoma
# samples compared to normal tissue samples in TCGA.

BLCA <- read_tsv("https://bioinfo.uth.edu/TSGene/BLCA_down_regulated_TSgenes.txt", col_names = FALSE)

colnames(BLCA) <- c("GeneID", "GeneSymbol")

write_tsv(BLCA, file = "data-raw/BLCA.tsv")

# BRCA : 589 human TSGs that are down-regulated in breast invasive carcinoma
# samples compared to normal tissue samples in TCGA.

BRCA <- read_tsv("https://bioinfo.uth.edu/TSGene/BRCA_down_regulated_TSgenes.txt", col_names = FALSE)

colnames(BRCA) <- c("GeneID", "GeneSymbol")

write_tsv(BRCA, file = "data-raw/BRCA.tsv")

# COAD : 535 human TSGs that are down-regulated in colon adenocarcinoma samples
# compared to normal tissue samples in TCGA.

COAD <- read_tsv("https://bioinfo.uth.edu/TSGene/COAD_down_regulated_TSgenes.txt", col_names = FALSE)

colnames(COAD) <- c("GeneID", "GeneSymbol")

write_tsv(COAD, file = "data-raw/COAD.tsv")

# HNSC : 445 human TSGs that are down-regulated in head and neck squamous cell
# carcinoma samples compared to normal tissue samples in TCGA.

HNSC <- read_tsv("https://bioinfo.uth.edu/TSGene/HNSC_down_regulated_TSgenes.txt", col_names = FALSE)

colnames(HNSC) <- c("GeneID", "GeneSymbol")

write_tsv(HNSC, file = "data-raw/HNSC.tsv")

# KICH : 568 human TSGs that are down-regulated in kidney chromophobe samples
# compared to normal tissue samples in TCGA.

KICH <- read_tsv("https://bioinfo.uth.edu/TSGene/KICH_down_regulated_TSgenes.txt", col_names = FALSE)

colnames(KICH) <- c("GeneID", "GeneSymbol")

write_tsv(KICH, file = "data-raw/KICH.tsv")

# KIRC : 491 human TSGs that are down-regulated in kidney renal clear cell
# carcinoma samples compared to normal tissue samples in TCGA.

KIRC <- read_tsv("https://bioinfo.uth.edu/TSGene/KIRC_down_regulated_TSgenes.txt", col_names = FALSE)

colnames(KIRC) <- c("GeneID", "GeneSymbol")

write_tsv(KIRC, file = "data-raw/KIRC.tsv")

# LUAD : 525 human TSGs that are down-regulated in lung adenocarcinoma samples
# compared to normal tissue samples in TCGA.

LUAD <- read_tsv("https://bioinfo.uth.edu/TSGene/LUAD_down_regulated_TSgenes.txt", col_names = FALSE)

colnames(LUAD) <- c("GeneID", "GeneSymbol")

write_tsv(LUAD, file = "data-raw/LUAD.tsv")

# LUSC : 534 human TSGs that are down-regulated in lung squamous cell carcinoma
# samples compared to normal tissue samples in TCGA.

LUSC <- read_tsv("https://bioinfo.uth.edu/TSGene/LUSC_down_regulated_TSgenes.txt", col_names = FALSE)

colnames(LUSC) <- c("GeneID", "GeneSymbol")

write_tsv(LUSC, file = "data-raw/LUSC.tsv")

# PRAD : 564 human TSGs that are down-regulated in prostate adenocarcinoma
# samples compared to normal tissue samples in TCGA.

PRAD <- read_tsv("https://bioinfo.uth.edu/TSGene/PRAD_down_regulated_TSgenes.txt", col_names = FALSE)

colnames(PRAD) <- c("GeneID", "GeneSymbol")

write_tsv(PRAD, file = "data-raw/PRAD.tsv")

# THCA : 486 human TSGs that are down-regulated in thyroid carcinoma samples
# compared to normal tissue samples in TCGA.

THCA <- read_tsv("https://bioinfo.uth.edu/TSGene/THCA_down_regulated_TSgenes.txt", col_names = FALSE)

colnames(THCA) <- c("GeneID", "GeneSymbol")

write_tsv(THCA, file = "data-raw/THCA.tsv")

# UCEC : 526 human TSGs that are down-regulated in uterine corpus endometrial
# carcinoma samples compared to normal tissue samples in TCGA.

UCEC <- read_tsv("https://bioinfo.uth.edu/TSGene/UCEC_down_regulated_TSgenes.txt", col_names = FALSE)

colnames(UCEC) <- c("GeneID", "GeneSymbol")

write_tsv(UCEC, file = "data-raw/UCEC.tsv")

### 合并为列表

ALL_down_exp_TSGs <- list(
  PANCANCER = all_pan_cancer,
  BLCA = BLCA, BRCA = BRCA,
  COAD = COAD, HNSC = HNSC,
  KICH = KICH, KIRC = KIRC,
  LUAD = LUAD, LUSC = LUSC,
  PRAD = PRAD, THCA = THCA,
  UCEC = UCEC
)

save(ALL_down_exp_TSGs, file = "data/ALL_down_exp_TSGs.rda")
