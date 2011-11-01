#!/usr/bin/env Rscript

update.packages(.libPaths()[1], ask = FALSE)
install.packages(setdiff(c('ggplot2', 'animation', 'rgl', 'gWidgetsRGtk2', 'Rd2roxygen',
                           'mapdata', 'aplpack', 'TeachingDemos', 'plotrix', 'vioplot',
                           'cairoDevice', 'xtable'), .packages(TRUE)))

