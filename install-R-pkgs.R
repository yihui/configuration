#!/usr/bin/env Rscript

pkgs = c('ggplot2', 'animation', 'rgl', 'gWidgetsRGtk2', 'pgfSweave', 'Rd2roxygen')
install.packages(setdiff(pkgs, .packages(TRUE)))

