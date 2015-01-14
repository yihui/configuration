options(
  repos = c(CRAN = 'http://cran.rstudio.com'),
  help_type = 'text', width = 80, github.user = 'yihui', shiny.reactlog = TRUE,
  devtools.name = 'Yihui Xie', devtools.desc.author = 'Yihui Xie <xie@yihui.name>',
  devtools.desc.license = 'GPL',
  warnPartialMatchAttr = TRUE, warnPartialMatchDollar = TRUE
)

if (.Platform$OS.type == 'unix') {
  options(browser = 'google-chrome')
}

if (interactive()) {
  d = list(
    h = function(pkg) help(package = (pkg), help_type = 'html'),
    i = function(...) devtools::install_github(...)
  )
}
