#' All the 1217 human tumor suppressor genes with basic annotations
#'
#'
#' @format A tibble data frame:
#' \describe{
#'   \item{GeneID}{Entrz Gene ID}
#'   \item{GeneSymbol}{HGNC Gene Symbol}
#'   \item{Alias}{Aliases}
#'   \item{Links}{External Website}
#'   \item{Chromosome}{Chromosome}
#'   \item{Cytoband}{Chromosome postion}
#'   \item{Description}{Gene functional annotation}
#'   \item{GeneType}{Gene biological Type}
#'   }
#' @name HumanTSGs
#' @source https://bioinfo.uth.edu/TSGene/index.html
#' @docType data
#' @keywords datasets
#' @usage data(HumanTSGs)
NULL

#' All the precomputed P-values for gene expression difference between tumor and
#' normal samples for all human tumor suppressor genes in pan-cancer
#'
#' @format A tibble data frame:
#' \describe{
#'   \item{GeneID}{Entrz Gene ID}
#'   \item{Symbol}{HGNC Gene Symbol}
#'   \item{BLCA}{Bladder urothelial carcinoma}
#'   \item{BRCA}{Breast invasive carcinoma}
#'   \item{COAD}{Colon adenocarcinoma}
#'   \item{HNSC}{Head and Neck squamous cell carcinoma}
#'   \item{KICH}{Kidney chromophobe}
#'   \item{KIRC}{Kidney renal clear cell carcinoma}
#'   \item{LUAD}{Lung adenocarcinoma}
#'   \item{LUSC}{Lung squamous cell carcinoma}
#'   \item{PRAD}{Prostate adenocarcinoma}
#'   \item{THCA}{Thyroid carcinoma}
#'   \item{UCEC}{Uterine corpus endometrial carcinoma}
#'   }
#' @name sig_exp
#' @source https://bioinfo.uth.edu/TSGene/index.html
#' @docType data
#' @keywords datasets
#' @usage data(sig_exp)
NULL

#' Download the down-regulated tumor suppressor genes in tumor samples versus
#' normal tissue
#'
#' @format A list of tumor suppressor:
#' \describe{
#'   \item{PANCAN}{All the down regulated 983 human TSGs are lower expressed in
#'   cancer samples of TCGA comparing to the TCGA normal tissue samples,
#'   GeneID: Entrz Gene ID,
#'   GeneName: HGNC Gene Symbol,
#'   NumberOfCancers: Number Of Cancer type,
#'   CancerTypes: Cancer Type.
#'   }
#'   \item{BLCA, BRCA, COAD, HNSC, KICH, KIRC, LUAD, LUSC, PRAD, THCA, UCEC}{
#'    GeneID: Entrz Gene ID,
#'    GeneSymbol: HGNC Gene Symbol}
#'   }
#' @name ALL_down_exp_TSGs
#' @source https://bioinfo.uth.edu/TSGene/index.html
#' @docType data
#' @keywords datasets
#' @usage data(ALL_down_exp_TSGs)
NULL

