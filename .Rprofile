options(
  repos = c(CRAN = 'http://streaming.stat.iastate.edu/CRAN',
            CRANextra = 'http://www.stats.ox.ac.uk/pub/RWin',
            Omegahat = 'http://www.omegahat.org/R'),
  help_type='text', width = 80
)

if (.Platform$OS.type == 'unix') {
  options(browser = 'google-chrome')
}

# a brutal fix to the LyX bug for my Windows: http://www.lyx.org/trac/ticket/7741
if (.Platform$OS.type == 'windows' && !interactive() && !nzchar(Sys.getenv('LyXDir')))
  invisible({
    Sys.setlocale(, "Chinese (Simplified)_People's Republic of China.936")
  })

# package development with devtools
if (interactive()) {
  .First <- function() {
    suppressMessages(require(devtools))
    options(warn = 1)
  }
  l = function(pkg = '.', reset = FALSE) devtools::load_all(pkg, reset)
}
