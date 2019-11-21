---
  title: "QC10xgenomics RNA Chen 5% mt. cutoff"
output:
  html_document:
  theme: united
df_print: kable
toc: yes
toc_depth: 6    
date: 'Compiled: `r format(Sys.Date(), "%B %d, %Y")`'
---
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(
  tidy = TRUE,
  tidy.opts = list(width.cutoff = 120),
  message = FALSE,
  warning = FALSE
)
```
## 1. load the data
```{r }
library(dplyr)
library(Seurat)
```