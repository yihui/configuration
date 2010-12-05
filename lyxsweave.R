## Rscript lyxsweave.R "UTF-8" "" "(csv|r|R|pdf)$" "" ""
## arguments in order:
## 1: encoding (UTF-8 by default)
## 2: the pattern of files to copy to the LyX temporary directory
x = commandArgs(TRUE)
options(encoding = x[1])
file.copy(list.files(x[2], x[3], full.names=TRUE, recursive=TRUE), x[4])
library(pgfSweave)
pgfSweave(x[5], compile.tex=FALSE)

